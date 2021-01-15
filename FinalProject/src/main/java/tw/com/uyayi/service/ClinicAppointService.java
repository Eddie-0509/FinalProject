package tw.com.uyayi.service;

import java.util.LinkedHashSet;
import java.util.List;

import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;

public interface ClinicAppointService {
	LinkedHashSet<Items> getClinicItem(Clinic clinic);
	List<Dentist> getDentist(Clinic clinic,String item);
}