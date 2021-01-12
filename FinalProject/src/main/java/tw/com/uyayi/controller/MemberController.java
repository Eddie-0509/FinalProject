package tw.com.uyayi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import tw.com.uyayi.model.Member;
import tw.com.uyayi.service.MemberService;

@Controller
@SessionAttributes({"member"})
public class MemberController {
	@Autowired
	MemberService memberService;
	
	@PostMapping(value = "/checkLogin")
	public String checkLogin(Model model, RedirectAttributes ra, @RequestParam String account, @RequestParam String pwd) {
		Member result = memberService.getMember(account,pwd);
		model.addAttribute("member",result);
		if(model.getAttribute("member")==null) {
			ra.addFlashAttribute("errorMsg", "帳號密碼錯誤");
			return "redirect:/";
		}
		else if (((Member) model.getAttribute("member")).getMemberStatus().equals("admin")) {
				return "redirect:/productManage";			
		}else {
			
			return "";
		}
	}
	
}
