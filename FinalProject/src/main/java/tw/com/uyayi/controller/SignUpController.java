package tw.com.uyayi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Dist;
import tw.com.uyayi.service.SignUpService;

@Controller
public class SignUpController {
	@Autowired
	SignUpService signUpService;
	
	@GetMapping(value = "/signupFirst")
	public String getAllCity(Model model) {
		List<City> cities = signUpService.getAllCity();
		model.addAttribute("cities", cities);
		return "clinic/clinicSignUp";
	}
	
	@GetMapping(path = "/getDist", produces = "application/json")
	public @ResponseBody List<Dist> getDist(@RequestParam("cityPkId") String cityPkId) {
		int cityId = Integer.valueOf(cityPkId);
		List<Dist> dists= signUpService.getDist(cityId);
		return dists;
	}
}