package tw.com.uyayi.controller;

import java.util.ArrayList;
import java.util.LinkedHashMap;
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
		List<Appointment> applist = caService.getAllAppointmentByClinic(clinicID);
		 model.addAttribute("DentistIdList",DentistIdList);
		 model.addAttribute("DentistNameList",DentistNameList);
		 model.addAttribute("AllAppointmentList",applist);
		 return "clinic/clinicCalendar";
	}
	
	//點選醫師個人行事曆傳送該醫生的預約資料
	@GetMapping(path = "/getAppointment", produces = "application/json")
	public @ResponseBody List<Appointment> getDentistAppointment(
			@RequestParam("dentistId") String dentistId) {
		int dentistId2 = Integer.valueOf(dentistId);
		List<Appointment> app= caService.getAppointmentByDentist(dentistId2);
		System.out.println(app.get(0).getAppointDate());
		return app;
	}
	@GetMapping(path = "/AppointmenDetail", produces = "application/json")
	public @ResponseBody LinkedHashMap<String,String> getAppointmentDetail(
			@RequestParam("appointmentId") String appointmentId) {
		int appointmentId2 = Integer.valueOf(appointmentId);
		LinkedHashMap<String,String> appdetail =new LinkedHashMap<String,String>() ;
//		appdetail.put("patientName", caService.)
		return appdetail;
	}

}
