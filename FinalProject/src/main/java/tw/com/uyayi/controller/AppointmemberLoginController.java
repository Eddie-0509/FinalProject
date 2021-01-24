package tw.com.uyayi.controller;



import java.sql.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import tw.com.uyayi.dao.MemberDao;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.MemberDetails;
import tw.com.uyayi.service.AppointmentService;
import tw.com.uyayi.service.MemberService;
@Controller
@SessionAttributes({"LoginOK","memberDetails"})
public class AppointmemberLoginController {
	
	@Autowired
	AppointmentService appointmentservice;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	MemberDao memberDao;

	//只有form表單無法使用modelAttribute；
	//進入預約時使用者尚未登入，跳出彈窗後提醒登入後並完成預約
	@PostMapping(path = "/appointmentCheckLogin")//可有多個請求路徑進入controller,進入後只會傳入該路徑的傳入值
	public String appointmentCheckLogin(Model model, RedirectAttributes ra, 
			@RequestParam String memberclinic,
			@RequestParam String memberdentist,
			@RequestParam String memberappointdate,
			@RequestParam String membertimetable,
			@RequestParam String memberitem,
			@RequestParam String account, 
			@RequestParam String pwd) throws java.text.ParseException {
			if(memberService.checkLogin(account,pwd)) {
				Member mb = memberService.getMemberByAccount(account);
				MemberDetails md = memberService.getMemberDetailByPkId(mb.getMemberPkId());
				model.addAttribute("LoginOK",mb);          //取得session的member資料
				model.addAttribute("memberBean",mb);	   //設定memberBean Session傳送該帳號的會員資訊以供後續會員功能使用
				model.addAttribute("memberDetails",md);	   //設定memberBean Session傳送該帳號的會員資訊以供後續會員功能使用
				Appointment ap = new Appointment();        //new一個空的appointment物件放值
				int memclinic = Integer.valueOf(memberclinic);     //前端input傳進來的值為String需要轉型
				ap.setClinicBean(appointmentservice.getClinicBeanByClinicPkId(memclinic));
				int memdentist = Integer.valueOf(memberdentist);
				ap.setDentistBean(appointmentservice.getDentistBeanByDentistPkId(memdentist));
				Date apDate = Date.valueOf(memberappointdate);
				ap.setAppointDate(apDate);
				int memtimetable = Integer.valueOf(membertimetable);
				ap.setTimeTableBean(appointmentservice.getTimeTableBeanByTimePkId(memtimetable));
				int memitem = Integer.valueOf(memberitem);
				ap.setItemBean(appointmentservice.getItemsBeanByItemPkId(memitem));
				ap.setMemberBean(mb);   //寫入會員資料
				ap.setPatientIdNumber(mb.getMemberIdNumber());
				ap.setPatientName(mb.getMemberName());
				ap.setPatientPhone(mb.getMemberPhone());
				appointmentservice.InsertAppointment(ap);  //新增預約紀錄
				appointmentservice.showAppointRecord(mb.getMemberPkId()); //新增後顯示預約紀錄
				return "redirect:appointmentRecord";       //返回預約紀錄頁面
			}else {
				ra.addFlashAttribute("errorMsg", "帳號密碼錯誤");	//傳送單次Session回預約頁面並重新選填後預約
				return "redirect:appointment";
			}
		}
}
