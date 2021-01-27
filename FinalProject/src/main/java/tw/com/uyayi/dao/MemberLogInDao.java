package tw.com.uyayi.dao;


import tw.com.uyayi.model.Member;

public interface MemberLogInDao {

		
	boolean checkLogin(String memberAccount, String memberPwd);
	
	Member getMemberByAccount(String memberAccount);

	void memberChangePwd(String memberPkId, String pwd);
	
}

