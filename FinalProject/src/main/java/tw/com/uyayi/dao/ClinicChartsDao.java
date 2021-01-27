package tw.com.uyayi.dao;

import java.util.LinkedHashMap;
import java.util.List;

import tw.com.uyayi.model.Clinic;

public interface ClinicChartsDao {

	LinkedHashMap<String,Integer> getItemsData(Clinic clinic);

	LinkedHashMap<String, Integer> getDentistData(Clinic clinic, String year, String month);

	LinkedHashMap<String, List<Integer>> getTotalData(Clinic clinic, String year, String month);

	LinkedHashMap<String, Integer> getGenderData(Clinic clinic);

}
