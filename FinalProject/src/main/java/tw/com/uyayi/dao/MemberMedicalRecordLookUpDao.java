package tw.com.uyayi.dao;

import java.util.List;

import tw.com.uyayi.model.MemberDetails;


public interface MemberMedicalRecordLookUpDao {

	List<MemberDetails> getAll(int id);
	
}
