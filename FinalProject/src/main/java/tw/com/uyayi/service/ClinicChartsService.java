package tw.com.uyayi.service;

import java.util.LinkedHashMap;

import tw.com.uyayi.model.Clinic;

public interface ClinicChartsService {

	LinkedHashMap<String,Integer> getItemsData(Clinic clinic);

	LinkedHashMap<String, Integer> getDentistData(Clinic clinic);

}
