package tw.com.uyayi.dao;

import java.util.List;

import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Dentist;

public interface ClinicCalendarDao {
	List<Appointment> getAppointmentByDentist(Integer dentistID);
//	Integer getDentistID(String dentistName);
	List<Dentist> getDentistList(Integer clinicID);
}