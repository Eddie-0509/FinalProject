package tw.com.uyayi.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.DentistDao;
import tw.com.uyayi.model.Dentist;

@Repository
public class DentistDaoImpl implements DentistDao {
	
	@Autowired
	SessionFactory factory;
	@SuppressWarnings("unchecked")
	@Override
	public Dentist getDentistById(int dentistPkId) {
		Session session = factory.getCurrentSession();
		String hql = "from Dentist where dentistPkId = :id";
		List<Dentist> dentistList =session.createQuery(hql).setParameter("id", dentistPkId).getResultList();
		return dentistList.get(0);
	}
	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<String> getTimeString() {
		Session session = factory.getCurrentSession();
		String hql = "select times from TimeTable where weekdays= :sunday";
		List<String> timeStringList = session.createQuery(hql).setParameter("sunday", "Sunday").getResultList();
		return timeStringList;
	}

}
