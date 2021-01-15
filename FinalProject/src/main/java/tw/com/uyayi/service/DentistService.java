package tw.com.uyayi.service;

import java.util.List;

import tw.com.uyayi.model.Dentist;

public interface DentistService {

	Dentist getDentistById(int dentistId);

	List<String> getTimeString();

}
