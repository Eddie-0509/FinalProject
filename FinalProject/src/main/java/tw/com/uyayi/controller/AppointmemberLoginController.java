package tw.com.uyayi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import tw.com.uyayi.dao.MemberDao;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.MemberDetails;
import tw.com.uyayi.service.MemberService;
@Controller
@SessionAttributes({"LoginOK","memberDetails"})
public class AppointmemberLoginController {
	
	@Autowired
	MemberService memberService;
	
	@Autowired
	MemberDao memberDao;

	@PostMapping(value = "/appointmentCheckLogin")
	public String appointmentCheckLogin(Model model, RedirectAttributes ra, @RequestParam String account, @RequestParam String pwd) {
			if(memberService.checkLogin(account,pwd)) {
				Member mb = memberService.getMemberByAccount(account);
				MemberDetails md = memberService.getMemberDetailByPkId(mb.getMemberPkId());
				model.addAttribute("LoginOK",mb);
				model.addAttribute("memberBean",mb);	//設定memberBean Session傳送該帳號的會員資訊以供後續會員功能使用
				model.addAttribute("memberDetails",md);	//設定memberBean Session傳送該帳號的會員資訊以供後續會員功能使用
					return "member/memberManagement";//一般會員登入後頁面
			}else {
				ra.addFlashAttribute("errorMsg", "帳號密碼錯誤");	//傳送單次Session回預約頁面
				return "redirect:appointment";
			}
		}
}
