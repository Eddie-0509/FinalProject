package tw.com.uyayi.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.TimeTable;

public interface ClinicAppointService {
	LinkedHashSet<Items> getClinicItem(Clinic clinic);
	List<Dentist> getDentist(Clinic clinic,String item);
	Set<String> getDentistTime(Clinic clinic,String item, String dentist);
	LinkedHashMap<String,List<String>>getAppointable(Clinic clinic,String item, String dentist,String timeInterval);
	Items getItemBean(String itemName);
	Dentist getDentistBean(String dentistName);
	TimeTable getTimeTableBean(Date appointDate, String times);
	void addAppointment(Appointment np);

}