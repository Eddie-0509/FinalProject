package tw.com.uyayi.dao;

import java.util.LinkedHashSet;
import java.util.List;

import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.TimeTable;

public interface ClinicAppointDao {
	LinkedHashSet<Items> getClinicItem(Clinic clinic);
	List<Dentist> getDentist(Clinic clinic,String item);
	List<TimeTable> getDentistTime(Clinic clinic,String item);
 }