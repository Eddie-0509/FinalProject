package tw.com.uyayi.controller;

import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.TimeTable;
import tw.com.uyayi.service.DentistService;

@Controller
@SessionAttributes("loginOK")
public class ClinicDentistController {
	
	@Autowired
	DentistService dentistService;

	@GetMapping("/getDentist")
	public String getDentist(@ModelAttribute("loginOK") Clinic clinic,Model model) {
		List<String> timeStringList =dentistService.getTimeString();
		List<Dentist> dentistList = dentistService.getDentistbyClinicPkId(clinic.getClinicPkId());
		model.addAttribute("timeStringList", timeStringList);
		model.addAttribute("dentistList",dentistList);
		return "clinic/clinicDentist";
	}
	
	@GetMapping(path = "/getDentistBean", produces = "application/json")
	public @ResponseBody Dentist getDentist(@RequestParam("dentistPkId") String dentistPkId) {
		int dentistId = Integer.valueOf(dentistPkId);
		Dentist dentist= dentistService.getDentistById(dentistId);
		return dentist;
	}
	
	@GetMapping("/newDentist")
	public String insertNewDentistForm(Model model) {
		Dentist dentist = new Dentist();
		model.addAttribute("newDentist",dentist);
		return "clinic/clinicDentist";
	}
	
	
	@PostMapping("newDentist")
	public String insertNewDentist(
			@ModelAttribute("newDentist") Dentist dentistBean,
			@ModelAttribute("loginOK") Clinic clinic,
			Model model) {
		
		dentistBean.setClinicBean(clinic);
		
		//取得checkBox的值
		String[] itemCheckBox = dentistBean.getItemCheckBox();
		Set<Items> itemsSet = new LinkedHashSet<Items>();
		for (int i = 0; i < itemCheckBox.length; i++) {
			int itemId= Integer.valueOf(itemCheckBox[i]); //轉換成int pkId
//			System.out.println(itemCheckBox[i]);
			itemsSet.add(dentistService.getItemBeanbyId(itemId));	// 取的item的bean放入set
		}
		dentistBean.setItemsBean(itemsSet);
		
		
		String[] timeCheckBox = dentistBean.getTimeCheckBox();
		Set<TimeTable> timeSet = new LinkedHashSet<TimeTable>();
		for (int i = 0; i < timeCheckBox.length; i++) {
			int timeId = Integer.valueOf(timeCheckBox[i]);
			timeSet.add(dentistService.getTimeBeanbyId(timeId));
		}
		dentistBean.setTimeTables(timeSet);
		
		if(dentistBean.getDentistGender().equals("男")) {
			dentistBean.setDentistImage("男生照片");
		}else {
			dentistBean.setDentistImage("女生照片");
		}
		dentistService.addNewDentist(dentistBean);
		
		return "redirect:/getDentist";
	}
	
	@PostMapping("reviseDentist")
	public String reviseForm(
			@RequestParam("dentistPkId") String dentistId, 
			@RequestParam("reviseItem") String[] reviseItemBox,
			@RequestParam("reviseTimeCheckBox") String[] reviseTimeCheckBox,
			Model model) { 
		int dentistPkId = Integer.valueOf(dentistId);
		Set<Items> itemsSet = new LinkedHashSet<Items>();
		for (int i = 0; i < reviseItemBox.length; i++) {
			int itemId= Integer.valueOf(reviseItemBox[i]); //轉換成int pkId
			itemsSet.add(dentistService.getItemBeanbyId(itemId));	// 取的item的bean放入set
		}
		
		Set<TimeTable> timeSet = new LinkedHashSet<TimeTable>();
		for (int i = 0; i < reviseTimeCheckBox.length; i++) {
			int timeId = Integer.valueOf(reviseTimeCheckBox[i]);
			timeSet.add(dentistService.getTimeBeanbyId(timeId));
		}
		
		dentistService.reviseDentist(dentistPkId,itemsSet,timeSet);
		
		return "redirect:/getDentist";
	}
}
