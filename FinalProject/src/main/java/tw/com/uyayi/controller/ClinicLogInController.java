package tw.com.uyayi.controller;

import java.sql.Date;
import java.util.Calendar;
import java.util.GregorianCalendar;


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

import tw.com.uyayi.dao.impl.MailCheck;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.service.ClinicCalendarService;
import tw.com.uyayi.service.ClinicLogInService;
import tw.com.uyayi.service.ClinicSignUpService;

@Controller
//SC註ㄉ
//@SessionAttributes({"loginOK","DentistIdList","DentistNameList","AllAppointmentList","clinicBean"}) 
@SessionAttributes({"loginOK","clinicBean"}) 
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
			if(clinic.getClinicEndTime()!=null) {
				
			Date endDate = clinic.getClinicEndTime();
			Calendar endCa = new GregorianCalendar();
			endCa.setTime(endDate);
			
			java.util.Date today = new java.util.Date();
	        Calendar todayCa = new GregorianCalendar();
	        todayCa.setTime(today);
	        
	        if(endCa.before(todayCa)) {
	        	clinicSignUpService.changeExpiredStatus(clinic.getClinicPkId());
	        }
			}

	        clinic = clinicLogInservce.getClinicByAccount(clinicAccount);
			if(clinic.getClinicStatus().equals("未驗證")) {
				return "clinic/clinicNotCheck";
			}else if(clinic.getClinicStatus().equals("已驗證")) {
				model.addAttribute("clinicBean",clinic);
				model.addAttribute("loginOK",clinic);
				return "clinic/clinicNotPay";
			}else {
			   model.addAttribute("loginOK",clinic);
			return "redirect:/clinicCalendar";
			}
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
	
	@GetMapping("/clinicForgotPwd")
	public String clinicForgotPwd(){
		return "clinic/clinicForgetPwd";
	}
	
	@PostMapping("/sendForgetMail")
	public @ResponseBody boolean sendForgetMail(@RequestParam("clinicAccount") String clinicAccount) {
		MailCheck m = new MailCheck();
		Clinic c = clinicLogInservce.getClinicByAccount(clinicAccount);

		String text = "<a href='http://localhost:9998/FinalProject/resetPwd?rgewrgerwgw45y4refqereqrfsfeq=5&clinicId="+c.getClinicPkId()+"&ffgsfdgerc=1fdshrt'>請點擊重設密碼</a>";
		m.sendMail(clinicAccount, "【UYAYI】重設密碼", text);
		return true ;
	}
	
	@GetMapping("/resetPwd")
	public String resetPwd(
			@RequestParam("clinicId") String clinicId,
			Model model) {
		model.addAttribute("clinicId",clinicId);
		return "clinic/clinicResetPwd";
	}
	
	@PostMapping("/clinicRestPwd")
	public String getReset(
			@RequestParam("clinicId") String clinicId,
			@RequestParam("clinicPwd") String clinicPwd,
			Model model
			) {
		clinicLogInservce.clinicChangePwd(clinicId,clinicPwd);
	return "redirect:/resetSuccess";
	}
	
	@GetMapping("/resetSuccess")
	public String turnToresetSuccess() {
		return "clinic/resetSuccess";
	}
	
}
