package tw.com.uyayi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Dist;
import tw.com.uyayi.service.DentistService;

@Controller
public class ClinicDentistController {
	
	@Autowired
	DentistService dentistService;

	@GetMapping("/getDentist")
	public String getDentist(Model model) {
		List<String> timeStringList =dentistService.getTimeString();
		model.addAttribute("timeStringList", timeStringList);
		return "clinic/clinicDentist";
	}
	
	@GetMapping(path = "/getDentistBean", produces = "application/json")
	public @ResponseBody Dentist getDentist(@RequestParam("dentistPkId") String dentistPkId) {
		int dentistId = Integer.valueOf(dentistPkId);
		Dentist dentist= dentistService.getDentistById(dentistId);
		return dentist;
	}
}
