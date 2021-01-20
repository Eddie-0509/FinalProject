package tw.com.uyayi.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.MemberDetails;
import tw.com.uyayi.service.MemberDetailsService;
import tw.com.uyayi.service.MemberService;
import tw.com.uyayi.service.MemberSignUpService;
import tw.com.uyayi.service.impl.MemberDetailsServiceImpl;

@Controller
@SessionAttributes({"LoginOK","memberDetails"})
public class GeneralMemberController {
	
	@Autowired
	MemberSignUpService memberSignUpService ;

	@Autowired
     MemberDetailsService memberDetailsService;
	

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
		return "index";
    }
    
    
    
    @RequestMapping(value="/memberModify",method=RequestMethod.GET)
    public String updateUserOneView(
    		Model model,@ModelAttribute("LoginOK") Member mb) {
    	model.addAttribute("member",mb);
    	return "member/memberModify";
  
    }
    
    @RequestMapping(value="/memberModifySo",method=RequestMethod.POST)
    public String updateUserOne(@ModelAttribute("member") Member member) {

    	if(member.getMemberStatus()==null) {	
    		member.setMemberStatus("true");
    	}

    	memberSignUpService.update(member);
		return "member/memberManagement";

    }
    
//    @GetMapping(value = "/memberFirstVisit")
//	public String memberFirstVisitView(@ModelAttribute("memberDetails") MemberDetails memberDetails) {
//    	
//    		return "member/memberFirstVisit";
//    	
//	}
    
    
    @GetMapping(value = "/memberFirstVisit")
	public String memberFirstVisitView(@ModelAttribute("memberDetails") MemberDetails memberDetails) {
    	System.out.println(memberDetails.getEmergencyContact());
    	if(memberDetails.getEmergencyContact()==null) {
    		return "member/memberFirstVisit";
    	}else {
    		return "member/getMemberFirstVisit";
    	}
	}
    
    
    
      
    @RequestMapping(value="/memberFirstVisitAddView",method=RequestMethod.GET)
  	public String memberFirstVisitAddView(Model model) {
    	model.addAttribute("memberDetails",new MemberDetails());
  		return "member/memberFirstVisit";	
  	}
    
    
    @RequestMapping(value="/memberFirstVisitAddView",method=RequestMethod.POST)
	public String addmemberFirstVisitAddView(@ModelAttribute("memberDetails") MemberDetails memberDetails,@ModelAttribute("LoginOK") Member mb) {

  	    memberDetails.setMember(mb);

    	memberDetailsService.add(memberDetails,mb);
    
		return "index";	
	}
    
    

//    public String memberFirstVisitAddView() {
//    	
//		return null;
//    }
//    
//    
     
    
    
    
    
    
    
    
    
    
    
  
}
