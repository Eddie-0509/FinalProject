package tw.com.uyayi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.ClinicCalendarDao;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.service.ClinicCalendarService;

@Transactional
@Service
public class ClinicCalendarServiceImpl implements ClinicCalendarService {
	
	ClinicCalendarDao caDao;
	
	@Autowired
	public void setCaDao(ClinicCalendarDao caDao) {
		this.caDao = caDao;
	}
	
	@Override
	public List<Appointment> getAppointmentByDentist(Integer dentistID) {
		return caDao.getAppointmentByDentist(dentistID);
	}

	@Override
	public List<Dentist> getDentistList(Integer clinicID) {
		return caDao.getDentistList(clinicID);
	}



}
