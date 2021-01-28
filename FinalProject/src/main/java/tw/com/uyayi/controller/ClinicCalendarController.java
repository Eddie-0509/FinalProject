package tw.com.uyayi.controller;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

import javax.persistence.NoResultException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.com.uyayi.dao.impl.ComparatorDate;
import tw.com.uyayi.dao.impl.Mail;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.service.ClinicCalendarService;



@Controller
@SessionAttributes("loginOK")
public class ClinicCalendarController {
	
	ClinicCalendarService caService;
	
	@Autowired
	public void setService(ClinicCalendarService service) {
		this.caService = service;
	}
	
	
	
	
	//點預約紀錄，model增加所有預約紀錄、醫師名單、醫師ID
	@GetMapping(value="/clinicCalendar")
	public  String getData(@ModelAttribute("loginOK") Clinic clinic,Model model) {
		int clinicID=clinic.getClinicPkId();
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
//		System.out.println(app.get(0).getAppointDate());
		return app;
	}
	//點選清單或行事曆上活動顯示詳細資料
	@GetMapping(path = "/getAppointmentDetail", produces = "application/json")
	public @ResponseBody LinkedHashMap<String,String> getAppointmentDetail(
			@RequestParam("appointmentId") String appointmentId) {
		int appointmentId2 = Integer.valueOf(appointmentId);
		LinkedHashMap<String,String> appdetail = caService.getAppointmentDetail(appointmentId2);
		System.out.println(appointmentId2+" "+appdetail);
		return appdetail;
	}
	//周行事曆 卡關了之後再寫ㄅ(還有月行事曆也是)
//	@GetMapping(path = "/getWeekDetail", produces = "application/json")
//	public @ResponseBody LinkedHashMap<String,String> getWeekDetail(
//			@RequestParam("appointmentId") String appointmentId) {
//		int appointmentId2 = Integer.valueOf(appointmentId);
//		LinkedHashMap<String,String> appdetail = caService.getAppointmentDetail(appointmentId2);
//		System.out.println(appointmentId2+" "+appdetail);
//		return appdetail;
//	}
	

	//用電話號碼查詢所有紀錄
	@GetMapping(path = "/queryAppointment", produces = "application/json")
	public @ResponseBody ArrayList<Appointment> queryAppointment(
			@RequestParam("Phone") String Phone) {
		 	 try {
			 ArrayList<Appointment> patientallapp = caService.queryAppointmentByPhone(Phone);
			 System.out.print(Phone);
			 Collections.sort(patientallapp,new ComparatorDate());
			 return patientallapp;
		 	 }catch (NoResultException e) {
		 		 e.printStackTrace();
				 return null;
			 } 
	}
	
	//寄信給會員
	@GetMapping(path = "/sendEmail", produces = "application/json")
	public @ResponseBody String sendEmail(
			@ModelAttribute("loginOK") Clinic clinic,
			@RequestParam("email") String email , @RequestParam("text") String text) {
		 	 Mail mail=new Mail();
		 	 mail.sendMail(email, "【UYAYI】來自"+clinic.getClinicName()+"的通知", text);
		 	 System.out.println(email+text);
		 	 
		 	 return null;
		 			 
	}
	
	//回報未到診
	@PostMapping(path =  "/absentReport", produces = "application/json")
	public @ResponseBody String absentReport(
			@RequestParam("appointmentID") Integer appointmentID,
			@RequestParam("memberEmail") String memberEmail,
			@RequestParam("patientName") String patientName) {
		 String msg=caService.absentReport(Integer.valueOf(appointmentID));
		 if(msg.equals("回報成功")) {
			 Mail mail=new Mail();
			 String text=patientName+" 先生/小姐　您好：\n\n　　診所通知您未前往看診，累積三次未到診您將會被暫停預約功能30日。如有疑問請洽UYAYI客服信箱，謝謝。\n\nUYAYI";
			 mail.sendMail(memberEmail,"【UYAYI】未到診提醒",text);
			 System.out.println("controller寄出");
		 }
		 System.out.println(msg);
		 return msg;
	}
	
	//修改預約時得到該醫生可選擇的項目
	@PostMapping(path = "/getItemByDentist", produces = "application/json")
	public @ResponseBody ArrayList<Items> getItemByDentist(
			@ModelAttribute("loginOK") Clinic clinic,
			@RequestParam("dentistName") String dentistName){
			
		 	 return caService.getItemByDentist(clinic,dentistName);
	}
	
	//更新預約(項目跟回覆only)
	@PostMapping("/updateAppointment")
	public  String updateAppointment(
			@RequestParam("appointmentID") Integer appointmentID,
			@RequestParam("updateItem") String updateItem,
			@RequestParam("updateReply") String updateReply) {
		 System.out.println(updateItem+" "+updateReply);
		 caService.updateAppointment(Integer.valueOf(appointmentID),updateItem,updateReply);
		 return "redirect:/clinicCalendar";
	}
	
	//刪除診所自己預約的預約
	@PostMapping(value = "/deleteAppointment")
	public String deleteAppointment(@RequestParam("appointmentPkId") String appointmentPkId) {
		int appointmentId=Integer.valueOf(appointmentPkId);
		caService.deleteAppointment(appointmentId);
		
		return "redirect:/clinicCalendar";
	}

	//得到會員填寫的初診資料
	@PostMapping(path = "/getmedicalRecord", produces = "application/json")
	public @ResponseBody LinkedHashMap<String,String> getmedicalRecord(
			@RequestParam("memberID") String memberID) {
		System.out.println(memberID);
		int memberID2 = Integer.valueOf(memberID);
		return caService.getmedicalRecord(memberID2);
	}
	
}
