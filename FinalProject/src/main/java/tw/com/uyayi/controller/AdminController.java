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

import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.Products;
import tw.com.uyayi.service.AdminService;

@Controller
public class AdminController {
	@Autowired
	AdminService service;
	
	
	@GetMapping(value = "/productManage")
	public String getAllProduct(Model model) {
		List<Products> beans = service.getAllProducts();
		JSONObject json = new JSONObject();
		json.put("product", beans);
		model.addAttribute("products",json);
		return "admin/productManage";
	}
	
	@GetMapping(value = "/clinicManage")
	public String getAllClinic(Model model) {
		List<Clinic> beans = service.getAllClinic();
		JSONObject json = new JSONObject();
		json.put("clinic", beans);
		model.addAttribute("clinics",json);
		return "admin/clinicManage";
	}

	@GetMapping(value = "/memberManage")
	public String getAllMember(Model model) {
		List<Member> beans = service.getAllMember();
		JSONObject json = new JSONObject();
		json.put("member", beans);
		model.addAttribute("members",json);
		return "admin/memberManage";
	}
	
//	@GetMapping(value = "/addProductForm")
//	public String addProductForm(Model model) {
//		Products product = new Products();
//		model.addAttribute("product",product);
//		return "admin/addProductForm";
//	}
//	
	@PostMapping(value = "/addProduct")
	public String addProduct(@ModelAttribute("product") Products product) {
		Date sqldate = service.getToday();
		product.setProductUpdateDate(sqldate);
		service.insertProduct(product);	
		return "redirect:/productManage";
	}
	
}
