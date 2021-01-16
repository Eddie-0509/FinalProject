package tw.com.uyayi.service.impl;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.DentistDao;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.TimeTable;
import tw.com.uyayi.service.DentistService;

@Service
public class DentistServiceImpl implements DentistService {
	@Autowired
	DentistDao dentistDao;

	@Transactional
	public Dentist getDentistById(int dentistPkId) {
		
		return dentistDao.getDentistById(dentistPkId);
	}

	@Transactional
	public List<String> getTimeString() {
		return dentistDao.getTimeString();
	}

	@Override
	@Transactional
	public Items getItemBeanbyId(int itemId) {
		// TODO Auto-generated method stub
		return dentistDao.getItemBeanbyId(itemId);
	}

	@Override
	@Transactional
	public TimeTable getTimeBeanbyId(int timeId) {
		// TODO Auto-generated method stub
		return dentistDao.getTimeBeanbyId(timeId);
	}

	@Override
	@Transactional
	public void addNewDentist(Dentist dentistBean) {
		dentistDao.addNewDentist(dentistBean);
	}

	@Override
	@Transactional
	public List<Dentist> getDentistbyClinicPkId(int clinicPkId) {
		// TODO Auto-generated method stub
		return dentistDao.getDentistbyClinicPkId(clinicPkId);
	}

	@Override
	@Transactional
	public void reviseDentist(int dentistPkId, Set<Items> itemsSet, Set<TimeTable> timeSet) {
		dentistDao.reviseDentist(dentistPkId, itemsSet, timeSet);		
	}

}
