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

	
	@Override
	public void update(MemberDetails memberDetails) {
		String s = "update memberDetails set emergencyContact =:eC,"
				+ " emergencyNumber = :eN,"
				+ " emergencyRelationship = :eR,"
				+ " smoke = :sm, "
				+ " betelNut = :bN,"
				+ " diseases = :dis,"
				+ " allergy = :aller,"
				+ " surgery = :su where memberPkId = :mId";
		getSession().createSQLQuery(s).setParameter("eC", memberDetails.getEmergencyContact()).setParameter("eN", memberDetails.getEmergencyNumber())
		.setParameter("eR", memberDetails.getEmergencyRelationship()).setParameter("sm", memberDetails.getSmoke())
		.setParameter("bN",memberDetails.getBetelNut()).setParameter("dis", memberDetails.getDiseases()).setParameter("aller", memberDetails.getAllergy())
		.setParameter("su", memberDetails.getSurgery()).setParameter("mId", memberDetails.getMemberPkId()).executeUpdate();
	}

	

	
}
