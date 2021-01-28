package tw.com.uyayi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.LineBotDao;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.service.LineBotService;


@Service
@Transactional
public class LineBotServiceImpl implements LineBotService {

	@Autowired
	LineBotDao lineBotDao;
	
	@Override
	public boolean checkUserId(String userId) {
		return lineBotDao.checkUserId(userId);
		
	}

	@Override
	public boolean updateMemberLineId(String userId, String lineText) {
		return lineBotDao.updateMemberLineId(userId, lineText);
	}

	@Override
	public List<Appointment> getAppointment(String userId) {
		// TODO Auto-generated method stub
		return lineBotDao.getAppointment(userId);
	}

	@Override
	public List<Appointment> getClinicAppoint(Clinic clinic) {
		// TODO Auto-generated method stub
		return lineBotDao.getClinicAppoint(clinic);
	}

	@Override
	public Appointment getAppointmentById(String appointmentPkId) {
		return lineBotDao.getAppointmentById(appointmentPkId);
	}

	
	@Override
	public Appointment cancelAppoint(String appointmentPkId) {
		return lineBotDao.cancelAppoint(appointmentPkId);
	}

	@Override
	public Appointment confirm(String appointmentPkId) {
		return lineBotDao.confirmAppoint(appointmentPkId);
	}

}
