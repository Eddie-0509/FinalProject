package tw.com.uyayi.service.impl;

import java.util.LinkedHashSet;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.ClinicAppointDao;
import tw.com.uyayi.model.Clinic;
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

}