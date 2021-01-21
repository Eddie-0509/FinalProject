package tw.com.uyayi.service.impl;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.ClinicSignUpDao;
import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dist;
import tw.com.uyayi.service.ClinicSignUpService;

@Service
public class ClinicSignUpServiceImpl implements ClinicSignUpService {

	@Autowired
	ClinicSignUpDao signUpDao;

	@Transactional
	@Override
	public List<City> getAllCity() {
		return signUpDao.getAllCity();
	}

	@Transactional
	@Override
	public List<Dist> getDist(int cityPkId) {
		return signUpDao.getDist(cityPkId);
	}

	@Transactional
	@Override
	public void insertClinic(Clinic clinic) {
		signUpDao.insertClinic(clinic);
	}

	@Transactional
	@Override
	public City getCityBean(int cityPkId) {
		return signUpDao.getCityBean(cityPkId);
	}

	@Transactional
	@Override
	public Dist getDistBean(int distPkId) {
		return signUpDao.getDistBean(distPkId);
	}

	@Transactional
	@Override
	public boolean checkEmail(String clinicEmail) {
		return signUpDao.checkEmail(clinicEmail);
	}

	@Override
	@Transactional
	public void changeStatus(int clinicPkId) {
		signUpDao.changeStatus(clinicPkId);
	}

	@Override
	@Transactional
	public void changePaymentStatus(int clinicPkId, Date finalDate, Date sqlDate) {
		signUpDao.changePaymentStatus(clinicPkId, finalDate, sqlDate);
	}

	@Override
	@Transactional
	public void changeExpiredStatus(int clinicPkId) {
		signUpDao.changeExpiredStatus(clinicPkId);
	}

}
