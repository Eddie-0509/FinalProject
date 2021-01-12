package tw.com.uyayi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import tw.com.uyayi.model.Member;
import tw.com.uyayi.service.MemberService;

@Controller
public class MemberController {
	@Autowired
	MemberService memberService;
	
	@PostMapping(value = "/checkLogin")
	public String checkLogin(Model model, RedirectAttributes ra, @RequestParam String account, @RequestParam String pwd) {
		Member result = memberService.getMember(account,pwd);
		if(result==null) {
			ra.addFlashAttribute("errorMsg", "帳號密碼錯誤");
			return "redirect:/";
		}
		else if (result.getMemberStatus().equals("admin")) {
			return "redirect:/productManage";			
		}else {
			ra.addAttribute("member", result);
			return "";
		}
	}
	
}
