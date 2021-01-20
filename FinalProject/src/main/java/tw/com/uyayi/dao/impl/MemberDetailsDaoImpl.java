package tw.com.uyayi.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.MemberDetailsDao;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.MemberDetails;


@Repository
public class MemberDetailsDaoImpl implements MemberDetailsDao {

	@Autowired
	private SessionFactory sessionfactory ;
	
	public Session getSession() {
		return sessionfactory.getCurrentSession();
		
	}
	
	
	@Override
	public void add(MemberDetails memberDetails,Member mb) {
		 getSession().save(memberDetails);

	}

	
}
