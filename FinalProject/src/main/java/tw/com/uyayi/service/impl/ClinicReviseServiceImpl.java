package tw.com.uyayi.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.ClinicReviseDao;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.service.ClinicReviseService;

@Service
@Transactional
public class ClinicReviseServiceImpl implements ClinicReviseService {

	@Autowired
	ClinicReviseDao clinicReviseDao;
	
	@Override
	public void update(Clinic clinic) {
		clinicReviseDao.update(clinic);
	}

	@Override
	public Clinic getClinicById(int clinicPkId) {
		return clinicReviseDao.getClinicById(clinicPkId);
	}

}
