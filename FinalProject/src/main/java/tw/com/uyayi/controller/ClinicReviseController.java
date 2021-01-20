package tw.com.uyayi.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dist;
import tw.com.uyayi.service.ClinicReviseService;
import tw.com.uyayi.service.ClinicSignUpService;

@Controller
@SessionAttributes("loginOK")
public class ClinicReviseController {

	@Autowired
	ClinicReviseService clinicReviseService;
	@Autowired
	ClinicSignUpService clinicSignUpService;
	
	@GetMapping("/clinicDetail")
	public String clinicDetail(@ModelAttribute("loginOK") Clinic c, Model model) {
		List<City> cityList = clinicSignUpService.getAllCity();
		Clinic  cBean = clinicReviseService.getClinicById(c.getClinicPkId());
		model.addAttribute("clinicBean", cBean);
		model.addAttribute("cityList",cityList);
		return "clinic/clinicDetail";
	}
	
	@GetMapping(value = "/reviseClinic")
	public String getSignUp(Model model) {
		Clinic clinic = new Clinic();
		model.addAttribute("clinicBean", clinic);
		return "clinic/clinicDetail";
	}
	
	// 接收表單資料用 並寫入資料庫
	@PostMapping(value ="/reviseClinic")
	public String processSignUp(@ModelAttribute("loginOK") Clinic loginClinic,
			@ModelAttribute("clinicBean") Clinic clinic) {
		System.out.println(clinic.getClinicCityId());
		clinic.setClinicPkId(loginClinic.getClinicPkId());
		City cityBean = clinicSignUpService.getCityBean(clinic.getClinicCityId());
		Dist distBean = clinicSignUpService.getDistBean(clinic.getClinicDistId());
		clinic.setCityBean(cityBean);
		clinic.setDistBean(distBean);
		clinicReviseService.update(clinic);
		return "redirect:/clinicDetail";
	}
}
