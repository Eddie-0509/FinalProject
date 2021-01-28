package tw.com.uyayi.dao;

import java.util.List;

import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;

public interface LineBotDao {

	boolean checkUserId(String userId);

	boolean updateMemberLineId(String userId, String lineText);

	List<Appointment> getAppointment(String userId);

	List<Appointment> getClinicAppoint(Clinic clinic);

	Appointment getAppointmentById(String appointmentPkId);
	
	Appointment confirmAppoint(String appointmentPkId);

	Appointment cancelAppoint(String appointmentPkId);

}
