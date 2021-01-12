package tw.com.uyayi.dao;

import tw.com.uyayi.model.Clinic;

public interface ClinicLogInDao {
	
	boolean checkLogin(String clinicAccount, String clinicPwd);
	
	Clinic getClinicByAccount(String clinicAccount);
	
}
