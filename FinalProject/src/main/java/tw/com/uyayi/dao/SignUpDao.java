package tw.com.uyayi.dao;

import java.util.List;

import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dist;

public interface SignUpDao {

	List<City> getAllCity();
	
	List<Dist> getDist(int cityPkId);
	
	void insertClinic(Clinic clinic);
	
	City getCityBean(int cityPkId);
	
	Dist getDistBean(int distPkId);
}
