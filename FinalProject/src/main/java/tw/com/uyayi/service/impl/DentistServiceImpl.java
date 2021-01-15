package tw.com.uyayi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.DentistDao;
import tw.com.uyayi.model.Dentist;
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

}
