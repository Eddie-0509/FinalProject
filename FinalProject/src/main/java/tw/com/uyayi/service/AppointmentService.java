package tw.com.uyayi.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.TimeTable;

public interface AppointmentService {
	
	List<Dentist> getDoctor(Integer ItemPkId, Integer timeTablePkId, Integer ClinicPkId);
	
	List<Items> getAllItems();
	
	List<TimeTable> getTimeTable(String weekdays);
	
    Clinic getClinicBeanByClinicPkId(String clinicPkId);
	   
	Dentist getDentistBeanByDentistPkId(String dentistPkId);
	   
	TimeTable getTimeTableBeanByTimePkId(String timeTablePkId);
	   
    Items getItemsBeanByItemPkId(String itemPkId);
	   
	void InsertAppointment(Appointment ap);
	
}
