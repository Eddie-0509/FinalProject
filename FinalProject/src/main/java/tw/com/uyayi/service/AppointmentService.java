package tw.com.uyayi.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.TimeTable;

public interface AppointmentService {
	
	List<Dentist> getDoctor(Integer ItemPkId, Integer timeTablePkId, Integer ClinicPkId);
	
	List<Clinic> getClinic(Integer clinicdist, String appointDate,Integer timeTableId, Integer itemId);
	
	List<Items> getAllItems();
	
	List<TimeTable> getTimeTable(String weekdays);
	
}
