package tw.com.uyayi.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import tw.com.uyayi.dao.impl.MailCheck;
import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.MemberDetails;
import tw.com.uyayi.model.Orders;
import tw.com.uyayi.service.ClinicLogInService;
import tw.com.uyayi.service.ClinicSignUpService;
import tw.com.uyayi.service.MemberDetailsService;
import tw.com.uyayi.service.MemberLogInService;
import tw.com.uyayi.service.MemberMedicalRecordLookUpService;
import tw.com.uyayi.service.MemberOrdersService;
import tw.com.uyayi.service.MemberService;
import tw.com.uyayi.service.MemberSignUpService;
import tw.com.uyayi.service.impl.MemberSignUpServiceImpl;

@Controller
@SessionAttributes({"LoginOK","memberDetails"})
public class GeneralMemberController {
	
	@Autowired
	MemberSignUpService memberSignUpService ;

	@Autowired
     MemberDetailsService memberDetailsService;
	
	@Autowired
	ClinicSignUpService signUpService;

	@Autowired
	MemberService memberService;	
    @Autowired
    MemberOrdersService memberOrdersService ;   
    @Autowired
	MemberLogInService memberLogInservce;  
    @Autowired
    MemberMedicalRecordLookUpService memberMedicalRecordLookUpService;
	
    @RequestMapping(value="/member",method=RequestMethod.GET)
	public String addMemberView(Model model) {
    	List<City> cities = signUpService.getAllCity();
		model.addAttribute("member",new Member());
		model.addAttribute("cities", cities);
		return "member/memberSignup";	
	}
    
    @RequestMapping(value = "/member",method=RequestMethod.POST )
    public String addMember(@ModelAttribute("member") Member member) {
    	System.out.println(member.getMemberAccount());
    	if(member.getMemberStatus()==null) {	
    		member.setMemberStatus("未開通");
    	}

    	memberSignUpService.add(member);
    	String text = "<a href='http://localhost:9998/FinalProject/memberMailCheck?rgewrgerwgw45y4refqereqrfsfeq=5&id="+member.getMemberPkId()+"&ffgsfdgerc=1fdshrt'>請點擊連結開通帳號</a>";
    	MailCheck m = new MailCheck();
    	m.sendMail(member.getMemberAccount(), "歡迎加入【UYAYI會員!】", text);
		return "index";
    }
       
	// 使用fetch驗證 帳號是否重複
	@PostMapping(path= "/memberCheckAccount", produces = "application/json")
	public @ResponseBody boolean memberCheckAccount(@RequestParam("memberAccount") String memberEmail) {
		boolean flag = memberSignUpService.checkEmail(memberEmail);
		return flag;
	}
        
  @GetMapping(value="memberMailCheck")
  public String mailCheck(@RequestParam("id") String id) {
  	int memberPkId = Integer.valueOf(id);
  	memberSignUpService.changeStatus(memberPkId);
  	return "member/memberMailCheck";
  }
    
    @RequestMapping(value="/memberModify",method=RequestMethod.GET)
    public String updateUserOneView(
    		Model model,@ModelAttribute("LoginOK") Member mb) {
    	model.addAttribute("member",mb);
    	return "member/memberModify";
  
    }
    
    //修改會員資料
    @RequestMapping(value="/memberModifySo",method=RequestMethod.POST)
    public String updateUserOne(@ModelAttribute("member") Member member) {
    	memberSignUpService.update(member);
		return "member/memberModify";
    }
    
   //以下是訂單查詢
    @RequestMapping(value="/memberOrderTracking",method=RequestMethod.GET)
    public String OrderTrackingView(
    		Model model,@ModelAttribute("LoginOK") Member mb) {
    	int mbid = mb.getMemberPkId();
    	List<Orders> od = memberOrdersService.getAllOrders(mbid);
    	model.addAttribute("orders",od);
    	System.out.println(od);
    	return "member/memberOrderTracking";
    }
    
 
    //修改病例資料GET
    @GetMapping(value = "/modifyTheCase")
    public String preModify(Model model) {
    	MemberDetails m = new MemberDetails();
    	model.addAttribute("md",m);
    	return "member/getMemberFirstVisit";
    }


    @RequestMapping(value="/modifyTheCase",method=RequestMethod.POST)
    public String modifyTheCase(@ModelAttribute("md") MemberDetails memberDetails,
    		@ModelAttribute("LoginOK") Member mb) {
    	memberDetails.setMemberPkId(mb.getMemberPkId());
    	memberDetailsService.update(memberDetails);
		return "redirect:/memberFirstVisit";
    }
    

    //初診判斷是否填過
    @GetMapping(value = "/memberFirstVisit")
	public String memberFirstVisitView(Model model,@ModelAttribute("LoginOK") Member mb,@ModelAttribute("LoginOK") Member mb2) {
    	MemberDetails md = memberService.getMemberDetailByPkId(mb.getMemberPkId());
    	if(md==null) {
    		return "member/memberFirstVisit";
    	}else {
    		int mdok = mb2.getMemberPkId();
        	List<MemberDetails> mdokmd = memberMedicalRecordLookUpService.getAllDetails(mdok);      
        	model.addAttribute("memberDetails",mdokmd);    
    		return "member/getMemberFirstVisit";
    	}
	}
     

     //病歷表填寫
    @RequestMapping(value="/memberFirstVisitAddView",method=RequestMethod.GET)
  	public String memberFirstVisitAddView(Model model) {
    	MemberDetails md = new MemberDetails();
    	model.addAttribute("md",md);
  		return "member/getMemberFirstVisit";	
  	}
    
    //病歷表填寫
    @RequestMapping(value="/memberFirstVisitAddView",method=RequestMethod.POST)
	public String addmemberFirstVisitAddView(@ModelAttribute("md") MemberDetails memberDetails,@ModelAttribute("LoginOK") Member mb) {
  	    memberDetails.setMember(mb);
        mb.setMemberStatus("已填寫");
    	memberDetailsService.add(memberDetails,mb);
		return "redirect:/memberFirstVisit";	
	}
    

    //以下為電子郵件修改密碼
    @GetMapping("/memberForgotPwd")
	public String memberForgotPwd(){
		return "member/memberForgetPwd";
	}
    

	@PostMapping("/setupForgetMail")
	public @ResponseBody boolean setupForgetMail(@RequestParam("memberAccount") String memberAccount) {
		MailCheck m = new MailCheck();
		Member c = memberLogInservce.getMemberByAccount(memberAccount);
		String text = "<a href='http://localhost:9998/FinalProject/userResetPwd?rgewrgerwgw45y4refqereqrfsfeq=5&memberId="+c.getMemberPkId()+"&ffgsfdgerc=1fdshrt'>請點擊重設密碼</a>";
		m.sendMail(memberAccount, "【UYAYI】重設會員密碼", text);
		return true ;
	}
    
	
	@GetMapping("/userResetPwd")
	public String userResetPwd(
			@RequestParam("memberId") String memberId,
			Model model) {
		model.addAttribute("memberId",memberId);
		return "member/memberResetPwd";
	}

	
	@PostMapping("/memberRestPwd")
	public String getReset(
			@RequestParam("memberId") String memberId,
			@RequestParam("memberPwd") String memberPwd,
			Model model
			) {
		memberLogInservce.memberChangePwd(memberId, memberPwd);
	return "redirect:/memberResetSuccess";
	}
	
	
	
	
	
	

	@GetMapping("memberResetSuccess")
	public String turnToresetSuccess() {
		return "member/memberResetSuccess";
	}
	


  
  
}
