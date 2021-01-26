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
@SessionAttributes({"LoginOK"})
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
	public @ResponseBody boolean mallCheckLogin(Model model, RedirectAttributes ra, @RequestParam String account, @RequestParam String pwd) {
		if(mService.checkLogin(account,pwd)) {
			Member mb = mService.getMemberByAccount(account);
			model.addAttribute("LoginOK",mb);
			model.addAttribute("memberBean",mb);
			return true;
			
		} else {
			ra.addFlashAttribute("errorMsg", "帳號密碼錯誤");
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
		Coupon cp = pService.checkCoupon(couponCode);
		
		Date couponMfd = cp.getCouponStartTime();
		Calendar mfdCld = new GregorianCalendar();
		mfdCld.setTime(couponMfd);
		
		Date couponExp = cp.getCouponEndTime();
		Calendar expCld = new GregorianCalendar();
		expCld.setTime(couponExp);
		
		java.util.Date today = new java.util.Date();
        Calendar todayCld = new GregorianCalendar();
        todayCld.setTime(today);
		
        if (todayCld.after(mfdCld) && todayCld.before(expCld)) {
        	return cp;
        	
        } else {
        	pService.updateCouponStatus(cp.getCouponPkId());
        	return null;
        }      
	}
	
	
	@PostMapping("/processOrder")
	public String processOrder (@ModelAttribute("orders") Orders orders, OrderDetails detail, Model model) {
		orders.setMemberBean((Member) model.getAttribute("LoginOK"));
		
		java.util.Date today = new java.util.Date();
		
		SimpleDateFormat formatter1 = new SimpleDateFormat("yyyy-MM-dd");
		java.sql.Date odate = java.sql.Date.valueOf(formatter1.format(today));
		orders.setOrderDate(odate);
		
		SimpleDateFormat formatter2 = new SimpleDateFormat("yyyyMMdd");
		String ndate = formatter2.format(today);	
		List<Orders> od = pService.getOrdersByDate(odate);
		String num = String.format("%04d", od.size() + 1);
		orders.setOrderNo(ndate + num);
		
		int cId = orders.getCouponId();
		Coupon cp = pService.getCouponById(cId);
		orders.setCouponBean(cp);

		pService.insertOrder(orders);
		
		String allItems[] = (orders.getproducts()).split(",");
		String allQty[] = (orders.getquantity()).split(",");
		
		String plist="";
		for (int i = 0 ; i < allItems.length ; i++) {
			detail.setOrderBean(orders);			
			detail.setProductBean(pService.getProductsById(Integer.valueOf(allItems[i])));
			detail.setOrderQuantity(Integer.valueOf(allQty[i]));
			pService.insertOrderDetail(detail);
			plist += pService.getProductsById(Integer.valueOf(allItems[i])).getProductName();
		}	
		
		LocalDateTime now = LocalDateTime.now();
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");
        String formatDateTime = now.format(formatter);

		AllInOne all = new AllInOne("");
		AioCheckOutOneTime  obj = new AioCheckOutOneTime();	
		obj.setMerchantTradeNo(ndate + num);
		obj.setMerchantTradeDate(formatDateTime);
		obj.setTotalAmount(Integer.toString(orders.getTotalPayment()));
		obj.setTradeDesc("test Description");
		obj.setItemName(plist);
		obj.setReturnURL("http://62ca4c1c070c.ngrok.io/FinalProject/updateOrderStatus");  //這裡放ngrok的網址
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
			pService.updateOrderStatus(orderId);
		}
	}
	
	@GetMapping("/orderComplete")
	public String afterGetPaid(Model model) {
		return "redirect:/";
	}
}