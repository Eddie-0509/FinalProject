package tw.com.uyayi.service;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;


import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;

public interface ClinicCalendarService {
	List<Appointment> getAppointmentByDentist(Integer dentistID);
	List<Appointment> getAllAppointmentByClinic(Integer clinicID);
	List<Dentist> getDentistList(Integer clinicID);
	LinkedHashMap<String,String> getAppointmentDetail(Integer appointmentID);
	ArrayList<Appointment> queryAppointmentByPhone(String Phone);
	String absentReport(Integer appointmentID);
	ArrayList<Items> getItemByDentist(Clinic clinic,String dentist);
	void updateAppointment(Integer appointmentID, String updateItem, String updateReply);


}
