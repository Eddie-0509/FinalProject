package tw.com.uyayi.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;


import tw.com.uyayi.dao.impl.MemberDetailsDaoImpl;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.MemberDetails;
import tw.com.uyayi.service.MemberDetailsService;



@Service
@Transactional
public class MemberDetailsServiceImpl implements MemberDetailsService {

	@Autowired
	MemberDetailsDaoImpl memberDetailsDaoImpl;
	
	
	@Override
	public void add(MemberDetails memberDetails,Member mb) {
		memberDetailsDaoImpl.add(memberDetails, mb);

	}




}
