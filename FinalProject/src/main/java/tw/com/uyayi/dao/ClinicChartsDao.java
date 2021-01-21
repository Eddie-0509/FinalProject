package tw.com.uyayi.dao;

import java.util.LinkedHashMap;

import tw.com.uyayi.model.Clinic;

public interface ClinicChartsDao {

	LinkedHashMap<String,Integer> getItemsData(Clinic clinic);

	LinkedHashMap<String, Integer> getDentistData(Clinic clinic);

}
