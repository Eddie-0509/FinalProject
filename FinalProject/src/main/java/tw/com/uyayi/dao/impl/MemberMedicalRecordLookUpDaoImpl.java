package tw.com.uyayi.dao.impl;

import java.lang.reflect.Member;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import tw.com.uyayi.dao.MemberMedicalRecordLookUpDao;
import tw.com.uyayi.model.MemberDetails;

@Repository
public class MemberMedicalRecordLookUpDaoImpl implements MemberMedicalRecordLookUpDao {

	@Autowired
	SessionFactory factory ;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<MemberDetails> getAll(int id) {
     Session session = factory.getCurrentSession();
     String hql = "from MemberDetails where memberPkId = :id";
     List<MemberDetails> a = session.createQuery(hql).setParameter("id", id).getResultList();
//     session.clear();
   	return a;
	}

}


