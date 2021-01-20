package tw.com.uyayi.dao;


import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.MemberDetails;

public interface MemberDao {
	
	Member getMemberByAccount(String account);

	boolean checkLogin(String account, String pwd);

	MemberDetails getMemberDetailByPkId(int memberPkId);

	
	
}
