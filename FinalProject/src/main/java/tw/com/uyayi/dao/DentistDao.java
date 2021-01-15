package tw.com.uyayi.dao;

import java.util.List;

import tw.com.uyayi.model.Dentist;

public interface DentistDao {

	Dentist getDentistById(int dentistPkId);

	List<String> getTimeString();

}
