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
	
//	@GetMapping("/clinicCalendar")
//	public String clinicCalendar() {
//		return "clinic/clinicCalendar";
//	}
	
}
