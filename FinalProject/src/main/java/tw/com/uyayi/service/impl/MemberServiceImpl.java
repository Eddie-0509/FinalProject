package tw.com.uyayi.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.MemberDao;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.MemberDetails;
import tw.com.uyayi.service.MemberService;

@Transactional
@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDao memberDao;
	
	@Override
	public Member getMemberByAccount(String account) {
		return memberDao.getMemberByAccount(account);
	}


	@Override
	public boolean checkLogin(String account, String pwd) {
		return memberDao.checkLogin(account,pwd);
	}


	@Override
	public MemberDetails getMemberDetailByPkId(int memberPkId) {
		
		return memberDao.getMemberDetailByPkId(memberPkId);
	}
	
}
