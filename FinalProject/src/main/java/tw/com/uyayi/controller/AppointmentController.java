package tw.com.uyayi.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.expression.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.com.uyayi.dao.AppointmentDao;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Dist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.TimeTable;
import tw.com.uyayi.service.AppointmentService;
import tw.com.uyayi.service.ClinicAppointService;
import tw.com.uyayi.service.ClinicSignUpService;
import tw.com.uyayi.service.MemberSignUpService;

@Controller
@SessionAttributes({"LoginOK"})
public class AppointmentController {

	@Autowired
	ClinicSignUpService signUpService;

	@Autowired
	AppointmentService appointmentService;
	
	@Autowired
	MemberSignUpService memberSignUpService;

	@GetMapping(value = "/appointment")
	public String getAllCity(Model model) {
		List<City> cities = signUpService.getAllCity();
		model.addAttribute("cities", cities);
		List<Items> items = appointmentService.getAllItems();
		model.addAttribute("items", items);
		return "member/appointment";
	}

	@GetMapping(path = "/getTimeTable", produces = "application/json")
	public @ResponseBody List<TimeTable> getTimeTable(@RequestParam("appointDate") String date) throws Exception {
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
		String[] weekDays = { "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday" };
		Calendar cal = Calendar.getInstance();
		Date datet = null;
		try {
			datet = f.parse(date);
			cal.setTime(datet);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		int w = cal.get(Calendar.DAY_OF_WEEK) - 1;
		if (w < 0)
			w = 0;
		String day = weekDays[w].toString();
		List<TimeTable> date1 = appointmentService.getTimeTable(day);
		return date1;
	}

	@GetMapping(path = "/searchDoctor", produces = "application/json")
	public @ResponseBody List<Dentist> searchDoctor(
			@RequestParam(value = "timeTablePkId") String timeTablePkId,
			@RequestParam(value = "itemPkId") String itemPkId,
			@RequestParam(value = "clinicDist") String clinicPkId) {
		int item = Integer.valueOf(itemPkId);
		int time = Integer.valueOf(timeTablePkId);
		int clinic = Integer.valueOf(clinicPkId);
		List<Dentist> dentistList = appointmentService.getDoctor(item, time, clinic);
		System.out.println(dentistList);
		return dentistList;
	}
	
	@PostMapping(value="/AddAp")
	public String memberAddAppointment(
			@ModelAttribute("loginOK") Member member,
	        @ModelAttribute("AddAp") Appointment ap){
		ap.setClinicBean(appointmentService.getClinicBeanByClinicPkId(ap.getClinicId()));
	    ap.setDentistBean(appointmentService.getDentistBeanByDentistPkId(ap.getDentistId()));
	    ap.getAppointdateId();
		ap.setItemBean(appointmentService.getItemsBeanByItemPkId(ap.getItemId()));
		ap.setTimeTableBean(appointmentService.getTimeTableBeanByTimePkId(ap.getTimetableId()));
		ap.setMemberBean(member);
		appointmentService.InsertAppointment(ap);
				 return "memberManagement";
	}
	
	
	
	
	
}
