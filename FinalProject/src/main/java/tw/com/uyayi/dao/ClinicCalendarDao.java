package tw.com.uyayi.dao;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Dentist;

public interface ClinicCalendarDao {
	List<Appointment> getAppointmentByDentist(Integer dentistID);
	List<Appointment> getAllAppointmentByClinic(Integer clinicID);
	List<Dentist> getDentistList(Integer clinicID);
	LinkedHashMap<String,String> getAppointmentDetail(Integer appointmentID);
	ArrayList<Appointment> queryAppointmentByPhone(String phone);
	String absentReport(Integer appointmentID);
}
