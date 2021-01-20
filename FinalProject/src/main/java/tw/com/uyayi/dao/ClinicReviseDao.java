package tw.com.uyayi.dao;

import tw.com.uyayi.model.Clinic;

public interface ClinicReviseDao {

	void update(Clinic clinic);

	Clinic getClinicById(int clinicPkId);

}
