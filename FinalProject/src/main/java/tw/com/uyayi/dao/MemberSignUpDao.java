package tw.com.uyayi.dao;

import java.util.List;

import tw.com.uyayi.model.Member;

public interface MemberSignUpDao {

	
	public void add (Member member);
	
	
	public void delete (int memberPkId);
	
	
	public void update (Member member);
	
	
	public Member getone (int memberPkId);
	
	
	public List<Member> getAll();
	    
	
}
