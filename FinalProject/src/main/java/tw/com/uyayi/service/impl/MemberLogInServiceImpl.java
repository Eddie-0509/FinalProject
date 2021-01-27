package tw.com.uyayi.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.MemberLogInDao;

import tw.com.uyayi.model.Member;
import tw.com.uyayi.service.MemberLogInService;

@Service
public class MemberLogInServiceImpl implements MemberLogInService {

	@Autowired
	MemberLogInDao memberLogInDao;

	@Transactional
	@Override
	public boolean checkLogin(String memberAccount, String memberPwd) {
	
		return memberLogInDao.checkLogin(memberAccount, memberPwd);
	}


	@Transactional
	@Override
	public Member getMemberByAccount(String memberAccount) {
	
		return memberLogInDao.getMemberByAccount(memberAccount);
	}


	
	@Override
	@Transactional
	public void memberChangePwd(String memberPkId, String pwd) {
		memberLogInDao.memberChangePwd(memberPkId, pwd);

	}

	
}
