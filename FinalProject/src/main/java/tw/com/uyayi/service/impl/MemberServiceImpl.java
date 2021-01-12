package tw.com.uyayi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.MemberDao;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.service.MemberService;

@Transactional
@Service
public class MemberServiceImpl implements MemberService {
	@Autowired
	MemberDao memberDao;
	
	@Override
	public Member getMember(String account, String pwd) {
		return memberDao.getMember(account,pwd);
	}
	
}
