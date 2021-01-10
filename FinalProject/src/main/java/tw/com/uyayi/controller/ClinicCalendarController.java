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
import tw.com.uyayi.model.Dist;
import tw.com.uyayi.service.ClinicCalendarService;



@Controller
public class ClinicCalendarController {
	
	ClinicCalendarService caService;
	
	@Autowired
	public void setService(ClinicCalendarService service) {
		this.caService = service;
	}
	
	@GetMapping(value="/clinicCalendar")
	public  String getData(@RequestParam Integer clinicID,Model model) {
		List<Dentist> dentistlist = caService.getDentistList(clinicID);
		LinkedList<String>DentistNameList = new LinkedList<String>();
		LinkedList<Integer>DentistIdList = new LinkedList<Integer>();
		for (Dentist dentistBean :dentistlist) {
			DentistNameList.add(dentistBean.getDentistName());
			DentistIdList.add(dentistBean.getDentistPkId());
		}
		 model.addAttribute("DentistIdList",DentistIdList);
		 model.addAttribute("DentistNameList",DentistNameList);
		 return "clinic/clinicCalendar";
	}
	
	@GetMapping(path = "/getAppointment", produces = "application/json")
	public @ResponseBody List<Appointment> getAppointment(
			@RequestParam("dentistId") String dentistId) {
		int dentistId2 = Integer.valueOf(dentistId);
		List<Appointment> app= caService.getAppointmentByDentist(dentistId2);
		System.out.println(app.get(0).getAppointDate());
		return app;
	}
}
