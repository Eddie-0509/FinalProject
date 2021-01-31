package tw.com.uyayi.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import tw.com.uyayi.model.Member;

import tw.com.uyayi.service.MemberService;

@Controller
@SessionAttributes({"LoginOK"})
public class MemberController {
	
	@Autowired
	MemberService memberService;
	
	
	@PostMapping(value = "/checkLogin")
	public String checkLogin(Model model, RedirectAttributes ra, @RequestParam String account, @RequestParam String pwd) {
		if(memberService.checkLogin(account,pwd)) {
			Member mb = memberService.getMemberByAccount(account);

			model.addAttribute("LoginOK",mb);
			model.addAttribute("memberBean",mb);	//設定memberBean Session傳送該帳號的會員資訊以供後續會員功能使用

			
			if(mb.getMemberStatus().equals("admin")) {
				return "redirect:/productManage";//管理者登入後頁面
			}else if(mb.getMemberStatus().equals("未開通")){
				return "redirect:/memberNotYetOpened";//未開通頁面
			}else {
				return "redirect:/appointment";//一般會員登入後頁面
			      }
		    }else {
			 ra.addFlashAttribute("errorMsg", "帳號密碼錯誤");	//傳送單次Session回首頁
			return "redirect:/";
		}
	}
	
	
	@GetMapping("/memberNotYetOpened")
	public String Nonactivated() {	
		return "member/memberNotYetOpened";
	}
	
	
//	@GetMapping("/memberManagement")
//	public String Openaccount() {	
//		return "member/memberManagement";
//	}	
	
	
	
	
	
	
	@GetMapping("/memberLogout")
	public String logout(HttpSession session,  Model model, SessionStatus status,
			RedirectAttributes redirectAtt
			) {	

		// 登出時執行下列兩敘述
		status.setComplete();		// 移除@SessionAttributes({"LoginOK"}) 標示的屬性物件
		session.invalidate();		// 此敘述不能省略，令目前 Session 失效		
		return "redirect:/";	
	}
	
	

	
	
	
	
}
