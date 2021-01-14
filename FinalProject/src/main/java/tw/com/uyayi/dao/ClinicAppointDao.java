package tw.com.uyayi.dao;

import java.util.LinkedHashSet;

import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Items;

public interface ClinicAppointDao {
	LinkedHashSet<Items> getClinicItem(Clinic clinic);
 }