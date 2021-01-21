package tw.com.uyayi.dao;

import java.sql.Date;
import java.util.List;

import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dist;

public interface ClinicSignUpDao {

	List<City> getAllCity();
	
	List<Dist> getDist(int cityPkId);
	
	void insertClinic(Clinic clinic);
	
	City getCityBean(int cityPkId);
	
	Dist getDistBean(int distPkId);

	boolean checkEmail(String clinicEmail);

	void changeStatus(int clinicPkId);

	void changePaymentStatus(int clinicPkId, Date finalDate, Date sqlDate);

	void changeExpiredStatus(int clinicPkId);
}
