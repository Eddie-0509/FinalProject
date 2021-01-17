package tw.com.uyayi.service;

import java.util.List;
import java.util.Set;

import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.TimeTable;

public interface DentistService {

	Dentist getDentistById(int dentistId);

	List<String> getTimeString();

	Items getItemBeanbyId(int itemId);

	TimeTable getTimeBeanbyId(int timeId);

	void addNewDentist(Dentist dentistBean);

	List<Dentist> getDentistbyClinicPkId(int clinicPkId);

	void reviseDentist(int dentistPkId, Set<Items> itemsSet, Set<TimeTable> timeSet);

	void deleteDentist(int dentistPkID);

}
