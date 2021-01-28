package tw.com.uyayi.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import tw.com.uyayi.dao.MemberMedicalRecordLookUpDao;
import tw.com.uyayi.model.MemberDetails;
import tw.com.uyayi.service.MemberMedicalRecordLookUpService;


@Transactional
@Service
public class MemberMedicalRecordLookUpServiceImpl implements MemberMedicalRecordLookUpService {

	@Autowired	
	MemberMedicalRecordLookUpDao memberMedicalRecordLookUpDao ;
	
	@Override
	public List<MemberDetails> getAllDetails(int id) {
	
		return memberMedicalRecordLookUpDao.getAll(id);
	}

}


