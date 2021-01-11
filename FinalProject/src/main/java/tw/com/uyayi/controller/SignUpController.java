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
import org.springframework.web.bind.annotation.ResponseBody;

import javassist.Loader.Simple;
import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dist;
import tw.com.uyayi.service.SignUpService;

@Controller
public class SignUpController {
	@Autowired
	SignUpService signUpService;
	
	
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
		
		signUpService.insertClinic(clinic);
		return "redirect:/clinicIndex";
	}
	@GetMapping("/testAPI")
	public String test() {
		return "clinic/testAPI";
		
	}
}
