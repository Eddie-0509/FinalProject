package tw.com.uyayi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.service.MemberSignUpService;

@Controller
public class MemberSignUpController {
	@Autowired
	MemberSignUpService memberSignUpService ;
	
	
    @RequestMapping(value="/member",method=RequestMethod.GET)
	public String addMemberView(Model model) {
		model.addAttribute("member",new Member());
		return "member/memberSignup";
		
	}
    
    
    @RequestMapping(value = "/member",method=RequestMethod.POST )
    public String addMember(@ModelAttribute("member") Member member) {
    	System.out.println(member.getMemberAccount());
    	if(member.getMemberStatus()==null) {	
    		member.setMemberStatus("true");
    	}
    	memberSignUpService.add(member);
		return "member/MemberManagement";
    }
    
    
    @RequestMapping(value="/member/{memberPkId}",method = RequestMethod.GET )
    public String updateMemberView(@PathVariable("memberPkId") Integer memberPkId ,Model model){
	Member member = memberSignUpService.getone(member);
    	
    	
    	
    	
    	return null;
    
    	
    	
    	
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
}
