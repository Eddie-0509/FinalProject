package tw.com.uyayi.service.impl;

import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.ClinicChartsDao;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.service.ClinicChartsService;


@Transactional
@Service
public class ClinicChartsServiceImpl implements ClinicChartsService {

	ClinicChartsDao chaDao;
	
	@Autowired
	public void setChaDao(ClinicChartsDao chaDao) {
		this.chaDao = chaDao;
	}
	
	@Override
	public LinkedHashMap<String,Integer> getItemsData(Clinic clinic) {
		return chaDao.getItemsData(clinic);
	}

	@Override
	public LinkedHashMap<String, Integer> getDentistData(Clinic clinic) {
		return chaDao.getDentistData(clinic);
	}

	@Override
	public LinkedHashMap<String, List<Integer>> getTotalData(Clinic clinic, String year, String month) {
		return chaDao.getTotalData(clinic,year,month);
	}

}
