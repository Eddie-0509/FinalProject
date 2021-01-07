package tw.com.uyayi.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.SignUpDao;
import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Dist;

@Repository
public class SignUpDaoImpl implements SignUpDao {
	
	@Autowired
	SessionFactory factory ;

	@SuppressWarnings("unchecked")
	@Override
	public List<City> getAllCity() {
		Session session = factory.getCurrentSession();
		String hql = "from City";
		return session.createQuery(hql).getResultList();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Dist> getDist(int cityPkId) {
		Session session = factory.getCurrentSession();
		String hql = "from Dist where cityPkId = :cId";
		return session.createQuery(hql).setParameter("cId", cityPkId).getResultList();
	}

}
