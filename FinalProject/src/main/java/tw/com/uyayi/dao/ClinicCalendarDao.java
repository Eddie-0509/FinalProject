package tw.com.uyayi.dao;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;

public interface ClinicCalendarDao {
	List<Appointment> getAppointmentByDentist(Integer dentistID);
	List<Appointment> getAllAppointmentByClinic(Integer clinicID);
	List<Dentist> getDentistList(Integer clinicID);
	LinkedHashMap<String,String> getAppointmentDetail(Integer appointmentID);
	ArrayList<Appointment> queryAppointmentByPhone(String phone);
	String absentReport(Integer appointmentID);
	ArrayList<Items> getItemByDentist(Clinic clinic, String dentist);
	void updateAppointment(Integer appointmentID, String updateItem, String updateReply);
	void deleteAppointment(int appointmentId);
	LinkedHashMap<String, String> getmedicalRecord(int memberID);
}
