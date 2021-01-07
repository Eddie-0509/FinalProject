package tw.com.uyayi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.SignUpDao;
import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Dist;
import tw.com.uyayi.service.SignUpService;
@Service
public class SignUpServiceImpl implements SignUpService {
	
	@Autowired
	SignUpDao signUpDao;
	
	@Transactional
	@Override
	public List<City> getAllCity() {
		return signUpDao.getAllCity();
	}

	@Override
	public List<Dist> getDist(int cityPkId) {
		return signUpDao.getDist(cityPkId);
	}

}
