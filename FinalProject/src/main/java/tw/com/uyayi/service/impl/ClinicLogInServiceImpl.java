package tw.com.uyayi.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.ClinicLogInDao;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.service.ClinicLogInService;


@Service
public class ClinicLogInServiceImpl implements ClinicLogInService {
	@Autowired
	ClinicLogInDao clinicLogInDao;
	
	@Transactional
	@Override
	public boolean checkLogin(String clinicAccount, String clinicPwd) {
		return clinicLogInDao.checkLogin(clinicAccount, clinicPwd);
	}
	@Transactional
	@Override
	public Clinic getClinicByAccount(String clinicAccount) {
	
		return clinicLogInDao.getClinicByAccount(clinicAccount);
	}

}
