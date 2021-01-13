package tw.com.uyayi.service;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;


import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Dentist;

public interface ClinicCalendarService {
	List<Appointment> getAppointmentByDentist(Integer dentistID);
	List<Appointment> getAllAppointmentByClinic(Integer clinicID);
	List<Dentist> getDentistList(Integer clinicID);
	LinkedHashMap<String,String> getAppointmentDetail(Integer appointmentID);
	ArrayList<Appointment> queryAppointmentByIdNumber(String IdNumber);


}
