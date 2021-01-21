package tw.com.uyayi.controller;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
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
			model.addAttribute("memberBean",mb);	//設定memberBean Session傳送該帳號的會員資訊以供後續會員功能使用
			return true;
			
		} else {
			ra.addFlashAttribute("errorMsg", "帳號密碼錯誤");	//傳送單次Session回首頁
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
	public @ResponseBody List<Coupon> checkCoupon(@RequestParam String couponCode) {
		List<Coupon> bean = (List<Coupon>) pService.checkCoupon(couponCode);
		return bean;
	}
	
	@PostMapping("/processOrder")
	public String processOrder (@ModelAttribute("orders") Orders orders, OrderDetails detail, Model model) {
		
		
		orders.setMemberBean((Member) model.getAttribute("LoginOK"));
		pService.insertOrder(orders);
		
		String allItems[] = (orders.getproducts()).split(",");
		System.out.println("allItems.length = " + allItems.length);
		String allQty[] = (orders.getquantity()).split(",");
		System.out.println("allQty.length = " + allQty.length);
		
		String str="";
		for (int i = 0 ; i < allItems.length ; i++) {
			detail.setOrderBean(orders);			
			detail.setProductBean(pService.getProductsById(Integer.valueOf(allItems[i])));
			detail.setOrderQuantity(Integer.valueOf(allQty[i]));
			str += pService.getProductsById(Integer.valueOf(allItems[i])).getProductName()+"<br>";
			pService.insertOrderDetail(detail);
		}	
		
		LocalDateTime now = LocalDateTime.now();

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");

        String formatDateTime = now.format(formatter);
		AllInOne all = new AllInOne("");
		AioCheckOutOneTime  obj = new AioCheckOutOneTime();
		int ramdom = (int)(Math.random()*100000);
		obj.setMerchantTradeNo(Integer.toString(orders.getOrderPkId())+Integer.toString(ramdom));
		obj.setMerchantTradeDate(formatDateTime);
		obj.setTotalAmount(Integer.toString(orders.getTotalPayment()));
		obj.setTradeDesc("test Description");
		obj.setItemName(str);
		obj.setClientBackURL("");   // 這裡放這樣的網址"http://localhost:9998/FinalProject/XXXX" 會生出按鍵刷卡完可以按回我們的網頁
		obj.setReturnURL("http://211.23.128.214:5000");  //這裡放ngrok的網址
		obj.setNeedExtraPaidInfo("N");
		obj.setRedeem("N");
		String form = all.aioCheckOut(obj, null);
		model.addAttribute("checkOut",form);
		return "mall/checkOut";
	}
}