package tw.com.uyayi.service;

import java.util.List;

import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dist;

public interface ClinicSignUpService {
	
	List<City> getAllCity();
	
	List<Dist> getDist(int cityPkId);
	
	void insertClinic(Clinic clinic);
	
	City getCityBean(int cityPkId);
	
	Dist getDistBean(int distPkId);

	boolean checkEmail(String clinicEmail);
}