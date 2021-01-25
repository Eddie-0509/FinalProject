package tw.com.uyayi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.LineBotDao;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.service.LineBotService;


@Service
@Transactional
public class LineBotServiceImpl implements LineBotService {

	@Autowired
	LineBotDao lineBotDao;
	
	@Override
	public boolean checkUserId(String userId) {
		return lineBotDao.checkUserId(userId);
		
	}

	@Override
	public boolean updateMemberLineId(String userId, String lineText) {
		return lineBotDao.updateMemberLineId(userId, lineText);
	}

	@Override
	public List<Appointment> getAppointment(String userId) {
		// TODO Auto-generated method stub
		return lineBotDao.getAppointment(userId);
	}

}
