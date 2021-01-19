package tw.com.uyayi.service.impl;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.AppointmentDao;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.TimeTable;
import tw.com.uyayi.service.AppointmentService;
@Service
public class AppointmentServiceImpl implements AppointmentService {

	@Autowired
	AppointmentDao appointmentDao;
	
	@Transactional
	@Override
	public List<Items> getAllItems() {	
		return appointmentDao.getAllItems();
	}
	@Transactional
	@Override
	public List<TimeTable> getTimeTable(String weekdays) {
		return appointmentDao.getTimeTable(weekdays);
	}
	@Transactional
	@Override
	public List<Dentist> getDoctor(Integer ItemPkId, Integer timeTablePkId, Integer ClinicPkId) {	
		return appointmentDao.getDoctor(ItemPkId, timeTablePkId, ClinicPkId);
	}
	@Transactional
	@Override
	public List<Clinic> getClinic(Integer clinicdist, String appointDate,Integer timeTableId, Integer itemId) {
		return appointmentDao.getClinicByAppointment(clinicdist, appointDate, timeTableId, itemId);
	}
	
	

}