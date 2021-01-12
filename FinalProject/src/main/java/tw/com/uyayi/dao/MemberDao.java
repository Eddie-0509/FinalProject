package tw.com.uyayi.dao;

import tw.com.uyayi.model.Member;

public interface MemberDao {
	
	Member getMember(String account, String pwd);
	
}
