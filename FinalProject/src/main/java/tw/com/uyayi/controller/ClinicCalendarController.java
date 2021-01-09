package tw.com.uyayi.controller;

import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.service.ClinicCalendarService;



@Controller
public class ClinicCalendarController {
	
	ClinicCalendarService caService;
	
	@Autowired
	public void setService(ClinicCalendarService service) {
		this.caService = service;
	}
	
	@GetMapping(value="/clinicCalendar/{clinicID}")
	public  String getData(@PathVariable Integer clinicID,Model model) {
//		caService.getAppointmentByDentist(dentistID);
		List<Dentist> dentistlist = caService.getDentistList(clinicID);
		LinkedList<String>DentistNameList = new LinkedList<String>();
		List<Appointment> app=new ArrayList<Appointment>();
		for (Dentist dentistBean :dentistlist) {
			DentistNameList.add(dentistBean.getDentistName());
			int dentistID=dentistBean.getDentistPkId();
			app.addAll(caService.getAppointmentByDentist(dentistID));
		}
		 model.addAttribute("DentistNameList",DentistNameList);
		 model.addAttribute("AppointmentList",app);
		 return "clinic/clinicCalendar";
	}
}
