package tw.com.uyayi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AppointmentController {
	
	@GetMapping(value="/appointment")
	public String getProducts() {
		return "member/appointment";
	}
}
