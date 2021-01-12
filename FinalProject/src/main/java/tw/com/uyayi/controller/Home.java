package tw.com.uyayi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

@Controller
public class Home {

	@GetMapping({"/","/index"})
	public String index(@ModelAttribute("errorMsg") String error, Model model) {
		model.addAttribute("errorMsg",error);
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
