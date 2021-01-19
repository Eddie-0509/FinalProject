package tw.com.uyayi.service.impl;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.ClinicCalendarDao;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
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

	@Override
	public List<Appointment> getAllAppointmentByClinic(Integer clinicID) {
		return caDao.getAllAppointmentByClinic(clinicID);
	}

	@Override
	public LinkedHashMap<String, String> getAppointmentDetail(Integer appointmentID) {
		return caDao.getAppointmentDetail(appointmentID);
	}

	@Override
	public ArrayList<Appointment> queryAppointmentByPhone(String phone) {
		return caDao.queryAppointmentByPhone(phone);
	}

	@Override
	public String absentReport(Integer appointmentID) {
		return caDao.absentReport(appointmentID);		
	}

	@Override
	public ArrayList<Items> getItemByDentist(Clinic clinic,String dentist) {
		return caDao.getItemByDentist(clinic,dentist);
	}

	@Override
	public void updateAppointment(Integer appointmentID, String updateItem, String updateReply) {
		caDao.updateAppointment(appointmentID,updateItem,updateReply);
		
	}



}
