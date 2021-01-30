package tw.com.uyayi.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.TimeTable;

public interface AppointmentService {
	
	List<Dentist> getDoctor(Integer ItemPkId, Integer timeTablePkId, Integer ClinicPkId);
	
	List<Items> getAllItems();
	
	List<TimeTable> getTimeTable(String weekdays);
	
    Clinic getClinicBeanByClinicPkId(Integer clinicPkId);
	   
	Dentist getDentistBeanByDentistPkId(Integer dentistPkId);
	   
	TimeTable getTimeTableBeanByTimePkId(Integer timeTablePkId);
	   
    Items getItemsBeanByItemPkId(Integer itemPkId);
	   
	void InsertAppointment(Appointment ap);

	List<Appointment> checkFull(Dentist dentist, String timeTablePkId, String appointmentDate);
	
	List<Appointment> showAppointRecord(Integer memberPkId);
	
	List<Appointment> showAppointRecordAfterToday(Integer memberPkId);
	
	void updateMemberReply(Integer apId);
	
	Appointment getAppointment(Integer appointmentPkId);
	
//	boolean checkBooked(Integer memberPkId, Integer timeTablePkId, String appointmentDate);
	
}
