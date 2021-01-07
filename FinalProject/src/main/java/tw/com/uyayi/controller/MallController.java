package tw.com.uyayi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import tw.com.uyayi.model.Products;
import tw.com.uyayi.service.ProductService;

@Controller
public class MallController {
	
	ProductService service;
	
	@Autowired
	public void setService(ProductService service) {
		this.service = service;
	}

	@GetMapping("/products")
	public String getProducts(Model model) {
		List<Products> beans = service.getAllProducts();
		model.addAttribute(beans); 
		return "mall/MallHomePage";
	}
}