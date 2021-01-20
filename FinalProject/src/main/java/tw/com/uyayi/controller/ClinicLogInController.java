package tw.com.uyayi.controller;

import java.util.LinkedList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.service.ClinicCalendarService;
import tw.com.uyayi.service.ClinicLogInService;
import tw.com.uyayi.service.ClinicSignUpService;

@Controller
@SessionAttributes({"loginOK","DentistIdList","DentistNameList","AllAppointmentList"}) 
public class ClinicLogInController {
	@Autowired
	ClinicLogInService clinicLogInservce;
	@Autowired
	ClinicCalendarService caService;
	@Autowired
	ClinicSignUpService clinicSignUpService;
	
	@PostMapping(value = "/clinic")
	public String clinicLogIn(Model model,
			RedirectAttributes redAttributes,
			@RequestParam("clinicAccount") String clinicAccount,
			@RequestParam("clinicPwd") String clinicPwd
			) {
		if(clinicLogInservce.checkLogin(clinicAccount, clinicPwd)) {
			Clinic clinic = clinicLogInservce.getClinicByAccount(clinicAccount);
			model.addAttribute("loginOK",clinic);
//			redAttributes.addFlashAttribute("clinicID",clinic.getClinicPkId());
			Integer clinicID = clinic.getClinicPkId();
			System.out.println(clinicID);
			List<Dentist> dentistlist = caService.getDentistList(clinicID);
			LinkedList<String>DentistNameList = new LinkedList<String>();
			LinkedList<Integer>DentistIdList = new LinkedList<Integer>();
			for (Dentist dentistBean :dentistlist) {
				DentistNameList.add(dentistBean.getDentistName());
				DentistIdList.add(dentistBean.getDentistPkId());
			}
			List<Appointment> applist = caService.getAllAppointmentByClinic(clinicID);
			 model.addAttribute("DentistIdList",DentistIdList);
			 model.addAttribute("DentistNameList",DentistNameList);
			 model.addAttribute("AllAppointmentList",applist);
			return "redirect:/clinicCalendar";
		}else {
			redAttributes.addFlashAttribute("logInFail","帳號密碼錯誤");
			return "redirect:/clinicIndex";
		}
	}
	
	@GetMapping("/logout")
	public String logout(HttpSession session,  Model model, SessionStatus status,
			RedirectAttributes redirectAtt
			) {	
//		String farewellMessage="";
//		redirectAtt.addFlashAttribute("FlashMSG_farewell", farewellMessage);

		// 登出時執行下列兩敘述
		status.setComplete();		// 移除@SessionAttributes({"LoginOK"}) 標示的屬性物件
		session.invalidate();		// 此敘述不能省略		
		return "redirect:/";	
	}
	
	
	
}
