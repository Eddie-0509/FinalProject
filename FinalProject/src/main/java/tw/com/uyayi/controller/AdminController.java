package tw.com.uyayi.controller;

import java.sql.Date;
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

import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.Products;
import tw.com.uyayi.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	AdminService service;
	
	//商品管理頁面(初始值為顯示全部商品資料)
	@GetMapping(value = "/productManage")
	public String getAllProduct(Model model) {
		List<Products> beans = service.getAllProducts();
		JSONObject json = new JSONObject();
		json.put("product", beans);
		model.addAttribute("products",json);
		return "admin/productManage";
	}
	//商品管理頁面(依產品類別顯示商品，Ajax功能)
	@GetMapping(value  = "/getAllProductsByCategoryAndStatus", produces = "application/json")
	public @ResponseBody List<Products> getProductsByCategory(@RequestParam String h_productCategory,@RequestParam String h_Status) {
		List<Products> beans= null;
		if((h_productCategory.equals("all"))&&(h_Status.equals("all"))) {
			beans = service.getAllProducts();			
		}else if(h_Status.equals("all")){
			beans = (List<Products>)service.getAllProductsByCategory(h_productCategory);	
		}else if(h_productCategory.equals("all")) {
			beans = (List<Products>)service.getAllProductsByStatus(h_Status);
		}else {
			beans = (List<Products>)service.getAllProductsByCategoryAndStatus(h_productCategory,h_Status);
		}
		return beans;
	}
	//商品管理頁面(模糊搜尋AutoComplete功能)-----尚未完成----------
	@PostMapping(value  = "/getProductName", produces = "application/json")
	public @ResponseBody List<String> getProductName(@RequestParam String keyName){
		List<String> beans = null;
		beans = service.getProdcutName(keyName);
		return null;
	}
	//商品管理頁面(依產品名稱搜尋商品資料)
	@GetMapping(value  = "/getAllProductsByName", produces = "application/json")
	public @ResponseBody List<Products> getAllProductsByName(@RequestParam String keyName) {
		List<Products> beans= null;
		if(keyName.equals("")) {
			beans = service.getAllProducts();
		}else {
			beans = service.getAllProductsByName(keyName);
		}
		return beans;
	}
	//新增產品功能
	@PostMapping(value = "/addProduct")
	public String addProduct(@ModelAttribute("addProduct") Products product) {
		Date sqldate = service.getToday();
		product.setProductUpdateDate(sqldate);
		service.insertProduct(product);	
		return "redirect:/productManage";
	}
	//更新產品功能
	@PostMapping(value = "/updateProduct")
	public String updateProduct(@ModelAttribute("updateProduct") Products product) {
		Date sqldate = service.getToday();
		product.setProductUpdateDate(sqldate);
		service.updateProduct(product);	
		return "redirect:/productManage";
	}
	
	//診所管理頁面(初始值為顯示所有診所資料)
	@GetMapping(value = "/clinicManage")
	public String getAllClinic(Model model) {
		List<Clinic> beans = service.getAllClinic();
		JSONObject json = new JSONObject();
		json.put("clinic", beans);
		model.addAttribute("clinics",json);
		return "admin/clinicManage";
	}
	//會員管理頁面(初始值為顯示所有會員資料)
	@GetMapping(value = "/memberManage")
	public String getAllMember(Model model) {
		List<Member> beans = service.getAllMember();
		JSONObject json = new JSONObject();
		json.put("member", beans);
		model.addAttribute("members",json);
		return "admin/memberManage";
	}
	@PostMapping(value = "/updateMemberStatus")
	public String updateMemberStatus(@RequestParam String memberStatus) {
		if(memberStatus.equals("停權")) {
			service.updateMemberStatus("已填寫");
		}else {
			service.updateMemberStatus("停權");
		}
		return "admin/memberManage";
		
	}
	
	
}
