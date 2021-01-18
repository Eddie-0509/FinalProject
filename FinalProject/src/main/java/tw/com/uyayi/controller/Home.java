package tw.com.uyayi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Home {

	
	@GetMapping({"/","/index"})
	public String index() {
		return "index";
	}
	
	@GetMapping("/clinicIndex")
	public String clinicIndex() {
		return "clinic/clinicIndex";
	}
	
	@GetMapping("/memberSignUp")
	public String memberSignUp() {
		return "member/memberSignUp";
	}
	
	@GetMapping("/orderConfirm")
	public String orderConfirm() {
		return "mall/OrderCheck";
	}
	
//	@GetMapping("/memberSingupOK")
//	public String memberSingupOK() {
//		return "member/MemberSingupOK";
//	}
//	
//	@GetMapping("/clinicCalendar")
//	public String clinicCalendar() {
//		return "clinic/clinicCalendar";
//	}
	
}
