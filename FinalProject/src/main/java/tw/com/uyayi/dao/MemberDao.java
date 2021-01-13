package tw.com.uyayi.dao;

import tw.com.uyayi.model.Member;

public interface MemberDao {
	
	Member getMemberByAccount(String account);

	boolean checkLogin(String account, String pwd);
	
}
