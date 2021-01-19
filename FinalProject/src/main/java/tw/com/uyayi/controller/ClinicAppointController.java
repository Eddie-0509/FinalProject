package tw.com.uyayi.controller;

import java.util.ArrayList;
import java.util.LinkedHashMap;
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

import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
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
		@GetMapping(value={"/clinicAppoint","/newAppoint"})
		public  String appoint(@ModelAttribute("loginOK") Clinic clinic,Model model) {
			LinkedHashSet<Items> itemlist = cappService.getClinicItem(clinic);
//			System.out.println("clinic.getDentists="+clinic.getDentists());
//			System.out.println(itemlist);
			List<Items> itemlist2 = new ArrayList<Items>(itemlist);
			model.addAttribute("itemlist",itemlist2);
			Appointment app = new Appointment();
			model.addAttribute("newAppoint",app);
			return "clinic/clinicCreateAppointment";
		}
		
		//點完項目得出可看診醫師
		@PostMapping(path =  "/getDentist", produces = "application/json")
		public @ResponseBody List<Dentist> getDentist(
				@ModelAttribute("loginOK") Clinic clinic,
				@RequestParam("item") String item){
//			System.out.println("=================================");
//			System.out.println("CONitem"+item+"CONlist"+cappService.getDentist(clinic, item));
//			System.out.println("=================================");
			 return cappService.getDentist(clinic, item);
		}
		
		//點完醫生，得到該醫生可預約時間
		@PostMapping(path =  "/getDentistTime", produces = "application/json")
		public @ResponseBody Set<String> getDentistTime(
				@ModelAttribute("loginOK") Clinic clinic,
				@RequestParam("item") String item,
				@RequestParam("dentist") String dentist){
			
			 return cappService.getDentistTime(clinic, item, dentist);
		}
		//得到90天內可預約的所有時間清單
		@PostMapping(path =  "/getAppointable", produces = "application/json")
		public @ResponseBody LinkedHashMap<String, List<String>> getAppointable(
				@ModelAttribute("loginOK") Clinic clinic,
				@RequestParam("item") String item,
				@RequestParam("dentist") String dentist,
				@RequestParam("timeInterval") String timeInterval){
				
			 return cappService.getAppointable(clinic, item, dentist, timeInterval);
		}
		
		
//		@GetMapping("/newAppoint")
//		public String insertNewAppointForm(Model model) {
//			Appointment app = new Appointment();
//			model.addAttribute("newAppoint",app);
//			return "clinic/clinicCreateAppointment";
//		}
		
		//填寫預約
		@PostMapping("/newAppoint")
		public  String  goToAppoint(
				@ModelAttribute("loginOK") Clinic clinic, 
				@ModelAttribute("newAppoint") Appointment np) {
			System.out.println("np.getItemName()"+np.getItemName());
			System.out.println("np.getPatientName()"+np.getPatientName());
			np.setItemBean(cappService.getItemBean(np.getItemName()));
			np.setDentistBean(cappService.getDentistBean(np.getDentistName()));
			np.setTimeTableBean(cappService.getTimeTableBean(np.getAppointDate(),np.getTimes()));
			np.setClinicBean(clinic);
			cappService.addAppointment(np);
			return "redirect:/clinicAppoint";
		}
}