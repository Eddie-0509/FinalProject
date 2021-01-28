package tw.com.uyayi.controller;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import ecpay.payment.integration.AllInOne;
import ecpay.payment.integration.domain.AioCheckOutPeriod;
import javassist.Loader.Simple;
import tw.com.uyayi.dao.impl.Mail;
import tw.com.uyayi.dao.impl.MailCheck;
import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dist;
import tw.com.uyayi.service.ClinicReviseService;
import tw.com.uyayi.service.ClinicSignUpService;

@Controller
@SessionAttributes("loginOK")
public class ClinicSignUpController {
	@Autowired
	ClinicSignUpService signUpService;
	@Autowired
	ClinicReviseService clinicReviseService;
	
	
	// 取得 縣市資料轉到註冊頁面
	@GetMapping(value = "/signupFirst")
	public String getAllCity(Model model) {
		List<City> cities = signUpService.getAllCity();
		model.addAttribute("cities", cities);
		return "clinic/clinicSignUp";
	}
	
	// 接收行政區的fetch
	@GetMapping(path = "/getDist", produces = "application/json")
	public @ResponseBody List<Dist> getDist(@RequestParam("cityPkId") String cityPkId) {
		int cityId = Integer.valueOf(cityPkId);
		List<Dist> dists= signUpService.getDist(cityId);
		return dists;
	}
	
	// 使用fetch驗證 帳號是否重複
	@PostMapping(path= "/checkAccount", produces = "application/json")
	public @ResponseBody boolean checkAccount(@RequestParam("clinicAccount") String clinicEmail) {
		boolean flag = signUpService.checkEmail(clinicEmail);
		return flag;
	}
	
	// 接收表單資料用
	@GetMapping(value = "/signUp")
	public String getSignUp(Model model) {
		Clinic clinic = new Clinic();
		model.addAttribute("clinic", clinic);
		return "clinic/clinicSignUp";
	}
	
	// 接收表單資料用 並寫入資料庫
	@PostMapping(value ="/signUp")
	public String processSignUp(@ModelAttribute("clinic") Clinic clinic) {
		System.out.println(clinic.getClinicCityId());
		
		City cityBean = signUpService.getCityBean(clinic.getClinicCityId());
		Dist distBean = signUpService.getDistBean(clinic.getClinicDistId());
		clinic.setCityBean(cityBean);
		clinic.setDistBean(distBean);
		
		//設定開始日期
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD");
		String dStr = sdf.format(d);
		java.sql.Date sqlDate = java.sql.Date.valueOf(dStr);
		clinic.setClinicStartTime(sqlDate);
		clinic.setClinicStatus("未驗證");
		signUpService.insertClinic(clinic);
		String text = "<a href='http://localhost:9998/FinalProject/mailCheck?rgewrgerwgw45y4refqereqrfsfeq=5&id="+clinic.getClinicPkId()+"&ffgsfdgerc=1fdshrt'>請點擊連結開通帳號</a>";
		MailCheck m = new MailCheck();
		m.sendMail(clinic.getClinicAccount(), "歡迎加入【UYAYI】", text);
		return "redirect:/clinicIndex";
	}
	
	@GetMapping(value="/mailCheck")
	public String mailCheck(@RequestParam("id") String id) {
		int clinicPkId = Integer.valueOf(id);
		signUpService.changeStatus(clinicPkId);
		return "clinic/mailCheck";
	}
	@GetMapping(value="/clinicPayment")
	public String clinicPayment(@ModelAttribute("clinicBean") Clinic c,Model model) {
		AllInOne allInOne = new AllInOne("");
		int randomNumber=(int)(Math.random()*100000);
	
		LocalDateTime now = LocalDateTime.now();

        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy/MM/dd HH:mm:ss");

        String formatDateTime = now.format(formatter);
		
		AioCheckOutPeriod obj = new AioCheckOutPeriod();
		obj.setMerchantID("2000132");
		obj.setMerchantTradeNo(c.getClinicPkId()+Integer.toString(randomNumber));
		obj.setMerchantTradeDate(formatDateTime);
		obj.setTotalAmount("2000");
		obj.setTradeDesc("test Description");
		obj.setItemName("TestItem");
		obj.setReturnURL("http://a5d879fbd5d9.ngrok.io/FinalProject/behindPayment");
//		obj.setOrderResultURL("http://localhost:9998/FinalProject/afterPayment");
		obj.setClientBackURL("http://localhost:9998/FinalProject/afterPayment");
		obj.setNeedExtraPaidInfo("N");
		obj.setPeriodAmount("2000");
		obj.setPeriodType("M");
		obj.setFrequency("1");
		obj.setExecTimes("12");
		obj.setCustomField1(Integer.toString(c.getClinicPkId()));
		obj.setItemName(c.getClinicName()+"一年期間每月扣款會費");
		String form = allInOne.aioCheckOut(obj, null);
		model.addAttribute("payment",form);
		System.out.println(form);
		return "clinic/clinicPayment";
	}
	
	@PostMapping(value = "/behindPayment")
	public void getPaymentFeedBack(
			@RequestParam("RtnCode") int rtnCode,
			@RequestParam("CustomField1") String clinicId,
			Model model) {
		if(rtnCode==1) {
			int clinicPkId = Integer.valueOf(clinicId);
			Date d = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD");
			String dStr = sdf.format(d);
			java.sql.Date sqlDate = java.sql.Date.valueOf(dStr);
			Calendar ca = Calendar.getInstance();
			ca.setTime(d);
			ca.add(Calendar.YEAR, 1);
			String finalDateString = sdf.format(ca.getTime());
			java.sql.Date finalDate = java.sql.Date.valueOf(finalDateString);
			signUpService.changePaymentStatus(clinicPkId, finalDate, sqlDate);
			model.addAttribute("loginOK",clinicReviseService.getClinicById(clinicPkId));
		}
	}
	@GetMapping("/afterPayment")
	public String afterGetPaid(Model model) {
		return "redirect:/clinicCalendar";
	}
	
}
