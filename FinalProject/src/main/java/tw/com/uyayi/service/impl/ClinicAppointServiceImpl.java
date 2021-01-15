package tw.com.uyayi.service.impl;

import java.util.LinkedHashSet;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.ClinicAppointDao;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.service.ClinicAppointService;


@Transactional
@Service
public class ClinicAppointServiceImpl implements ClinicAppointService {

	ClinicAppointDao cappDao;
	
	@Autowired
	public void setCappDao(ClinicAppointDao cappDao) {
		this.cappDao = cappDao;
	}
	
	@Override
	public LinkedHashSet<Items> getClinicItem(Clinic clinic) {
		return cappDao.getClinicItem(clinic);
	}

	@Override
	public List<Dentist> getDentist(Clinic clinic, String item) {
		return cappDao.getDentist(clinic, item);
	}

}