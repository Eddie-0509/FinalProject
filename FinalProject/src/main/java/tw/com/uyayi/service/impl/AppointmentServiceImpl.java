package tw.com.uyayi.service.impl;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.AppointmentDao;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.Member;
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
	public Clinic getClinicBeanByClinicPkId(Integer clinicPkId) {	
		return appointmentDao.getClinicBeanByClinicPkId(clinicPkId);
	}
	@Transactional
	@Override
	public Dentist getDentistBeanByDentistPkId(Integer dentistPkId) {	
		return appointmentDao.getDentistBeanByDentistPkId(dentistPkId);
	}
	@Transactional
	@Override
	public TimeTable getTimeTableBeanByTimePkId(Integer timeTablePkId) {
		return appointmentDao.getTimeTableBeanByTimePkId(timeTablePkId);
	}
	@Transactional
	@Override
	public Items getItemsBeanByItemPkId(Integer itemPkId) {		
		return appointmentDao.getItemsBeanByItemPkId(itemPkId);
	}
	@Transactional
	@Override
	public void InsertAppointment(Appointment ap) {
		appointmentDao.InsertAppointment(ap);
	}
	@Transactional
	@Override
	public List<Appointment> checkFull(Dentist dentist, String timeTablePkId, String appointmentDate) {
		
		return appointmentDao.checkFull(dentist, timeTablePkId, appointmentDate);
	}
	@Transactional
	@Override
	public List<Appointment> showAppointRecord(Integer memberPkId) {
		
		return appointmentDao.showAppointRecord(memberPkId);
	}
	
	@Transactional
	@Override
	public List<Appointment> showAppointRecordAfterToday(Integer memberPkId) {
		
		return appointmentDao.showAppointRecordAfterToday(memberPkId);
	}
	
	@Transactional
	@Override
	public void updateMemberReply(Integer apId) {
		appointmentDao.updateMemberReply(apId);
	}
	
	@Transactional
	@Override
	public Appointment getAppointment(Integer appointmentPkId) {
		return appointmentDao.getAppointment(appointmentPkId);
	}
	
//	@Transactional
//	@Override
//	public boolean checkBooked(Integer memberPkId, Integer timeTablePkId, String appointmentDate) {
//		return appointmentDao.checkBooked(memberPkId, timeTablePkId, appointmentDate);
//	}

}
