package tw.com.uyayi.service;


import tw.com.uyayi.model.Member;

public interface MemberLogInService {

	boolean checkLogin(String memberAccount, String memberPwd);
	
	Member getMemberByAccount(String memberAccount);
	
	void memberChangePwd(String memberPkId, String pwd);

}
