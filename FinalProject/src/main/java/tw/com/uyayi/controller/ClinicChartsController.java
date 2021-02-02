package tw.com.uyayi.controller;

import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.service.ClinicChartsService;

@Controller
@SessionAttributes("loginOK")
public class ClinicChartsController {
	
ClinicChartsService chaService;
	
	@Autowired
	public void setChaService(ClinicChartsService service) {
		this.chaService = service;
	}
	@GetMapping(value="/clinicCharts")
	public  String getCharts(@ModelAttribute("loginOK") Clinic clinic) {

		 return "clinic/clinicCharts";
	}
	
	@GetMapping(path="/clinicItemsPie",produces = "application/json")
	public  @ResponseBody LinkedHashMap<String,Integer> getItemsPieData(@ModelAttribute("loginOK") Clinic clinic,Model model) {
		 return chaService.getItemsData(clinic);
	}
	@GetMapping(path="/clinicDentistBar",produces = "application/json")
	public  @ResponseBody LinkedHashMap<String,Integer> getDentistBarData(
			@ModelAttribute("loginOK") Clinic clinic,
			Model model,
			@RequestParam("year") String year,
			@RequestParam("month") String month) {
		 return chaService.getDentistData(clinic,year,month);
	}
	@GetMapping(path="/clinicTotalStackedBar",produces = "application/json")
	public  @ResponseBody LinkedHashMap<String,List<Integer>> getTotalStackedBarData(
			@ModelAttribute("loginOK") Clinic clinic,
			@RequestParam("year") String year,
			@RequestParam("month") String month,
			Model model) {
//		System.out.println(chaService.getTotalData(clinic,year,month));
		return chaService.getTotalData(clinic,year,month);
	}
	@GetMapping(path="/clinicGenderPie",produces = "application/json")
	public  @ResponseBody LinkedHashMap<String,Integer> getGenderPieData(@ModelAttribute("loginOK") Clinic clinic,Model model) {
		 return chaService.getGenderData(clinic);
	}
}
