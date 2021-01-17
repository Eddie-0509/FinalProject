package tw.com.uyayi.service;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.TimeTable;

public interface ClinicAppointService {
	LinkedHashSet<Items> getClinicItem(Clinic clinic);
	List<Dentist> getDentist(Clinic clinic,String item);
	Set<String> getDentistTime(Clinic clinic,String item, String dentist);
	LinkedHashMap<String,ArrayList<String>>getAppointable(Clinic clinic,String item, String dentist,String timeInterval);

}