package tw.com.uyayi.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutALL;
import ecpay.payment.integration.domain.AioCheckOutOneTime;
import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Coupon;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.OrderDetails;
import tw.com.uyayi.model.Orders;
import tw.com.uyayi.model.Products;
import tw.com.uyayi.service.ClinicSignUpService;
import tw.com.uyayi.service.MemberService;
import tw.com.uyayi.service.ProductService;

@Controller
@SessionAttributes({"LoginOK", "thisNo"})
public class MallController {
	
	@Autowired
	ProductService pService;
	
	@Autowired
	MemberService mService;
	
	@Autowired
	ClinicSignUpService cService;


	@GetMapping("/products")
	public String getProducts(Model model) {
		List<Products> beans = pService.getAllProducts();
		
		//將商品列表轉為JSON物件送至前端
		JSONObject job = new JSONObject();
		job.put("productList", beans);	
		model.addAttribute("products",job); 
		return "mall/MallHomePage";
	}
	
	
	@GetMapping(path  = "/productsByCategory", produces = "application/json")
	public @ResponseBody List<Products> getProductsByCategory(@RequestParam String productCategoty) {
		List<Products> beans = (List<Products>)pService.getProductsByCategory(productCategoty);
		return beans;
	}

	
	@PostMapping("/mallCheckLogin")
	public @ResponseBody boolean mallCheckLogin(
			Model model, 
			RedirectAttributes ra, 
			@RequestParam String account, 
			@RequestParam String pwd
			){
		
		if(mService.checkLogin(account,pwd)) {
			Member mb = mService.getMemberByAccount(account);
			model.addAttribute("LoginOK",mb);  //將會員資料存到session
			return true;
			
		} else {
			ra.addFlashAttribute("errorMsg", "帳號密碼錯誤");  //向前端發送一次性錯誤訊息
			return false;
		}		
	}
	
	
	@GetMapping("/orderConfirm")
	public String getAllCity(Model model) {
		List<City> cities = cService.getAllCity();
		model.addAttribute("cities", cities);
		return "mall/OrderCheck";
	}
	
	
	@PostMapping("/checkCoupon")
	public @ResponseBody Coupon checkCoupon(@RequestParam String couponCode) {
		Coupon cp = pService.checkCoupon(couponCode);  //以前端使用者輸入的優惠碼去撈資料庫
		
		if (cp == null) {
			return null;
			
		} else {		
			//在日曆標註優惠券生效日期
			Date couponMfd = cp.getCouponStartTime();
			Calendar mfdCld = new GregorianCalendar();
			mfdCld.setTime(couponMfd);
		
			//在日曆標註優惠券失效日期
			Date couponExp = cp.getCouponEndTime();
			Calendar expCld = new GregorianCalendar();
			expCld.setTime(couponExp);
		
			//生成當下日期並在日曆標註
			java.util.Date today = new java.util.Date();
			Calendar todayCld = new GregorianCalendar();
			todayCld.setTime(today);
		
			//判斷當下日期是否在優惠券有效期限內
			if (todayCld.after(mfdCld) && todayCld.before(expCld)) {
				return cp;
        	
			//若過期則進資料庫修改優惠券狀態
			} else {
				pService.updateCouponStatus(cp.getCouponPkId());
				return null;
			}
		}
	}
	
	
	@PostMapping("/processOrder")
	public String processOrder (@ModelAttribute("orders") Orders orders, OrderDetails detail, Model model) {
		orders.setMemberBean((Member) model.getAttribute("LoginOK"));  //取得目前登入中的會員資料
		
		//生成當下日期
		java.util.Date today = new java.util.Date();
		
		//設置訂單日期
		SimpleDateFormat formatter1 = new SimpleDateFormat("yyyy-MM-dd");
		java.sql.Date odate = java.sql.Date.valueOf(formatter1.format(today));
		orders.setOrderDate(odate);
		
		//設置訂單編號 (日期 + 流水號)
		SimpleDateFormat formatter2 = new SimpleDateFormat("yyyyMMdd");
		String ndate = formatter2.format(today);	
		List<Orders> od = pService.getOrdersByDate(odate);  //從資料庫撈出今日訂單數量以決定流水號的值
		String num = String.format("%04d", od.size() + 1);  //規定流水號為四位數前面補零
		orders.setOrderNo(ndate + num);
		
		//設置優惠券如果使用者有輸入
		if (orders.getCouponId() != "") {		
		int cId = Integer.valueOf(orders.getCouponId());
		Coupon cp = pService.getCouponById(cId);
		orders.setCouponBean(cp);
		}

		//將處理中訂單的訂單編號保留供後續取用
		model.addAttribute("thisNo", orders.getOrderNo());
		pService.insertOrder(orders);
		
		//拆分使用者所購買商品的商品編號和數量存入陣列
		String allItems[] = (orders.getproducts()).split(",");
		String allQty[] = (orders.getquantity()).split(",");
		
		//設置依商品編號撈出的商品資訊和數量並將訂單明細寫入資料庫
		String plist = "";
		for (int i = 0 ; i < allItems.length ; i++) {
			detail.setOrderBean(orders);			
			detail.setProductBean(pService.getProductsById(Integer.valueOf(allItems[i])));
			detail.setOrderQuantity(Integer.valueOf(allQty[i]));
			pService.insertOrderDetail(detail);
			
			//儲存使用者購買商品名稱列表待後續取用
			plist += pService.getProductsById(Integer.valueOf(allItems[i])).getProductName() + "#";
		}	

		LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        String formatDateTime = now.format(formatter);

        //設置綠界產生訂單所需參數
		AllInOne all = new AllInOne("");
		AioCheckOutOneTime  obj = new AioCheckOutOneTime();	
		obj.setMerchantTradeNo(ndate + num);
		obj.setMerchantTradeDate(formatDateTime);
		obj.setTotalAmount(Integer.toString(orders.getTotalPayment()));
		obj.setTradeDesc("test Description");
		obj.setItemName(plist);

		obj.setReturnURL("http://9689facef272.ngrok.io/FinalProject/updateOrderStatus");
		obj.setClientBackURL("http://localhost:9998/FinalProject/orderComplete");


		obj.setReturnURL("http://743a61a1a04c.ngrok.io/FinalProject/updateOrderStatus");  //這裡放ngrok的網址

		obj.setReturnURL("http://bf77f62897f5.ngrok.io/FinalProject/updateOrderStatus");  //這裡放ngrok的網址

		obj.setClientBackURL("http://localhost:9998/FinalProject/orderComplete");   // 這裡放這樣的網址"http://localhost:9998/FinalProject/XXXX" 會生出按鍵刷卡完可以按回我們的網頁

		obj.setCustomField1(Integer.toString(orders.getOrderPkId()));
		obj.setNeedExtraPaidInfo("N");
		obj.setRedeem("N");
		String form = all.aioCheckOut(obj, null);
		model.addAttribute("checkOut",form);
		return "mall/checkOut";
	}
	
	@PostMapping("/updateOrderStatus")
	public void updateOrderStatus(@RequestParam("RtnCode") int rtnCode, @RequestParam("CustomField1") int orderId, Model model) {
		if (rtnCode == 1) {
			pService.updateOrderStatus(orderId);  //當付款成功修改訂單狀態
		}
	}
	
	@GetMapping("/orderComplete")
	public String afterGetPaid(Model model) {
		String oNum = (String) model.getAttribute("thisNo");
		Orders or = pService.getOrderByOrderNo(oNum);
		model.addAttribute("order", or);
		return "mall/OrderComplete";
	}
}