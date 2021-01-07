package tw.com.uyayi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MallController {

	@GetMapping("/products")
	public String getProducts(Model model) {
		
		return "mall/MallHomePage";
	}
}