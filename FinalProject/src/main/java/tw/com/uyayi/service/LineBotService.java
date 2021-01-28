package tw.com.uyayi.service;

import java.sql.Date;
import java.util.List;

import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;

public interface LineBotService {

	boolean checkUserId(String userId);

	boolean updateMemberLineId(String userId, String lineText);

	List<Appointment> getAppointment(String userId);

	List<Appointment> getClinicAppoint(Clinic clinic);

	Appointment getAppointmentById(String appointmentPkId);
	
	Appointment confirm(String appointmentPkId);
	
	Appointment cancelAppoint(String appointmentPkId);

}
