package tw.com.uyayi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import tw.com.uyayi.model.Products;
import tw.com.uyayi.service.ProductService;

@Controller
public class AdminController {
	ProductService service;
	
	@Autowired
	public void setService(ProductService service) {
		this.service = service;
	}

	@RequestMapping(value = "/productManage")
	public String productManage(Model model) {
		List<Products> beans = service.getAllProducts();
		model.addAttribute(beans); 
		return "admin/productManage";
	}
	
}
