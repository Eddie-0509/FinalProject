package tw.com.uyayi.service;

import java.util.List;


import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Dentist;

public interface ClinicCalendarService {
	List<Appointment> getAppointmentByDentist(Integer dentistID);
	List<Dentist> getDentistList(Integer clinicID);
}
