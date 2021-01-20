package tw.com.uyayi.service;

import tw.com.uyayi.model.Clinic;

public interface ClinicReviseService {

	void update(Clinic clinic);

	Clinic getClinicById(int clinicPkId);

	
	
}
