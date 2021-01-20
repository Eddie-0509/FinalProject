package tw.com.uyayi.service;

import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.MemberDetails;

public interface MemberService {
	//利用帳號密碼去取得對應的會員資料
	Member getMemberByAccount(String account);

	boolean checkLogin(String account, String pwd);

	MemberDetails getMemberDetailByPkId(int memberPkId);

}
