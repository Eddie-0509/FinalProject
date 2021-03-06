package tw.com.uyayi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.MemberSignUpDao;
import tw.com.uyayi.dao.impl.MemberSignUpDaoImpl;
import tw.com.uyayi.model.Member;

import tw.com.uyayi.service.MemberSignUpService;

@Service
@Transactional
public class MemberSignUpServiceImpl implements MemberSignUpService {

	@Autowired
	public MemberSignUpDaoImpl memberSignUpDaoImpl;
	
	@Autowired
	MemberSignUpDao signUpDao;
	
	
	@Override
	public void add(Member member) {
		memberSignUpDaoImpl.add(member);

	}

	@Override
	public void delete(int memberPkId) {
		memberSignUpDaoImpl.delete(memberPkId);

	}

	@Override
	public void update(Member member) {
		memberSignUpDaoImpl.update(member);

	}


	@Override
	public Member getone(int memberPkId) {
		return memberSignUpDaoImpl.getone(memberPkId);
	
	}


	@Override
	public List<Member> getAllMember() {
		
		return null;
	}

	@Transactional
	@Override
	public boolean checkEmail(String memberEmail) {
		return signUpDao.checkEmail(memberEmail);

	}

	@Override
	@Transactional
	public void changeStatus(int memberPkId) {
		signUpDao.changeStatus(memberPkId);
		
	}



}
