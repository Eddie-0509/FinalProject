package tw.com.uyayi.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.LinkedHashSet;
import java.util.LinkedList;
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
//			System.out.println("clinic.getDentists="+clinic.getDentists());
//			System.out.println(itemlist);
			List<Items> itemlist2 = new ArrayList<Items>(itemlist);
			model.addAttribute("itemlist",itemlist2);
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
		
		@PostMapping(path =  "/getAppointable", produces = "application/json")
		public @ResponseBody LinkedList<String> getAppointable(
				@ModelAttribute("loginOK") Clinic clinic,
				@RequestParam("item") String item,
				@RequestParam("dentist") String dentist,
				@RequestParam("timeInterval") String timeInterval){
			long millis=System.currentTimeMillis(); 
			Date date=new Date(millis);//取時間
			Calendar calendar = new GregorianCalendar();
			LinkedList<String> datelist =new LinkedList<String>();
		      for(int i=0;i<=90;i++) {
		    	  calendar.setTime(date);
			      calendar.add(calendar.DATE,+i);//把日期往前減少一天，若想把日期向後推一天則將負數改為正數
			      Date date2=new Date(calendar.getTimeInMillis()); 
			      SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
			      String dateString = formatter.format(date2);
			      datelist.add(dateString);
		      }
		      cappService.getAppointable(clinic, item, dentist, timeInterval);
			 return null;
		}
}