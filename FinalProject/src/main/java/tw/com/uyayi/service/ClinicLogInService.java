package tw.com.uyayi.service;

import tw.com.uyayi.model.Clinic;

public interface ClinicLogInService {
	
	boolean checkLogin(String clinicAccount, String clinicPwd);
	Clinic getClinicByAccount(String clinicAccount);

}
