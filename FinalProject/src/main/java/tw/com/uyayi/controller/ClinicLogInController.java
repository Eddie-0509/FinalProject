package tw.com.uyayi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.service.ClinicLogInService;

@Controller
@SessionAttributes({"clinic"}) 
public class ClinicLogInController {
	@Autowired
	ClinicLogInService clinicLogInservce;
	
	@PostMapping(value = "/clinicLogIn")
	public String clinicLogIn(Model model,
			RedirectAttributes redAttributes,
			@RequestParam("clinicAccount") String clinicAccount,
			@RequestParam("clinicPwd") String clinicPwd
			) {
		if(clinicLogInservce.checkLogin(clinicAccount, clinicPwd)) {
			Clinic clinic = clinicLogInservce.getClinicByAccount(clinicAccount);
//			model.addAttribute("clinic",clinic);
			redAttributes.addAttribute("clinicID",clinic.getClinicPkId());
			return "redirect:/clinicCalendar";
		}else {
			model.addAttribute("logInFail","帳號密碼錯誤");
			return "clinic/clinicIndex";
		}
	}
	
}
