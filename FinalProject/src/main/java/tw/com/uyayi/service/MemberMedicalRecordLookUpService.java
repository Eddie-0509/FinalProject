package tw.com.uyayi.service;

import java.util.List;

import tw.com.uyayi.model.MemberDetails;


public interface MemberMedicalRecordLookUpService {

	
	public List<MemberDetails> getAllDetails(int id);
	
	
}
