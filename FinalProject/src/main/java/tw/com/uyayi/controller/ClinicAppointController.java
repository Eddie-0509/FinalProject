package tw.com.uyayi.controller;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.service.ClinicAppointService;

@Controller
@SessionAttributes("loginOK")
public class ClinicAppointController {
	
	ClinicAppointService cappService;
	
	@Autowired
	public void setCappService(ClinicAppointService cappService) {
		this.cappService = cappService;
	}
	
	
		//點預約新增
		@GetMapping(value="/clinicAppoint")
		public  String appoint(@ModelAttribute("loginOK") Clinic clinic,Model model) {
			LinkedHashSet<Items> itemlist = cappService.getClinicItem(clinic);
			System.out.println("clinic.getDentists="+clinic.getDentists());
			System.out.println(itemlist);
			List<Items> itemlist2 = new ArrayList<Items>(itemlist);
			model.addAttribute("itemlist",itemlist2);
			return "clinic/clinicCreateAppointment";
		}
}