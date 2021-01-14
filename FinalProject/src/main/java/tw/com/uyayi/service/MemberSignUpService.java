package tw.com.uyayi.service;

import java.util.List;

import tw.com.uyayi.model.Member;

public interface MemberSignUpService {

	
	public void add (Member member);
	
	
	public void delete (int memberPkId);
	
	
	public void update (Member member);
	
	
	public Member getone (int memberPkId);
	
	
	public List<Member> getAllMember();



	
}
