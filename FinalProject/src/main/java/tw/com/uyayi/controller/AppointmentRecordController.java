package tw.com.uyayi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.MemberDetails;
import tw.com.uyayi.service.AdminService;
import tw.com.uyayi.service.AppointmentService;
import tw.com.uyayi.service.MemberService;



@Controller
@SessionAttributes({"LoginOK"})
public class AppointmentRecordController {

	@Autowired
	AppointmentService appointmentService;
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	AdminService adminService;
	
	//顯示該會員的預約紀錄，使用ModelAttribute搭配session取得memberPkId
	@GetMapping(value = "/appointmentRecord")
	public String toAppointmentRecord(
		@ModelAttribute("LoginOK") Member m,Model model) {
		List<Appointment> app = appointmentService.showAppointRecord((m.getMemberPkId()));
		List<Appointment> afterapp = appointmentService.showAppointRecordAfterToday(m.getMemberPkId());
		//下方為直接塞值
//		String mename = m.getMemberName();
//		model.addAttribute("memberName", mename);
		//用session裡的memberBean直接直接傳送值到前端
		System.out.println(app);
		model.addAttribute("member", m);
		//顯示今日以前的紀錄前端使用<c:forEach items>接收
		model.addAttribute("appointment", app);
		System.out.println(afterapp);
		//顯示今日以後的紀錄前端使用<c:forEach items>接收
		model.addAttribute("appointmentAfterToDay", afterapp);
		return "member/appointmentRecord";
	}
	
	//取消預約=修改預約紀錄裡的回覆
	@GetMapping(path = "/renewAppointment")
	public String updatememberReply(@RequestParam String appointmentPkId,Model model) {
		int apId = Integer.valueOf(appointmentPkId);
		appointmentService.updateMemberReply(apId);
		return "redirect:/appointmentRecord";
	}
	
}
