package tw.com.uyayi.controller;

import java.util.List;

import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Coupon;
import tw.com.uyayi.model.Dist;
import tw.com.uyayi.model.Member;
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
}