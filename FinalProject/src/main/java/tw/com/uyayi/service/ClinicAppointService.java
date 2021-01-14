package tw.com.uyayi.service;

import java.util.LinkedHashSet;

import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Items;

public interface ClinicAppointService {
	LinkedHashSet<Items> getClinicItem(Clinic clinic);

}