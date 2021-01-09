package tw.com.uyayi.dao.impl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.SignUpDao;
import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Clinic;
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
		List<City> a= session.createQuery(hql).getResultList();
		session.clear();
		return a ;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Dist> getDist(int cityPkId) {
		Session session = factory.getCurrentSession();
		String hql = "from Dist where cityPkId = :cId";
		List<Dist> a = session.createQuery(hql).setParameter("cId", cityPkId).getResultList();
		session.clear();
		return a;
	}

	@Override
	public void insertClinic(Clinic clinic) {
		Session session = factory.getCurrentSession();
		session.save(clinic);		
	}

	@Override
	public City getCityBean(int cityPkId) {
		Session session = factory.getCurrentSession();
		City cityBean = session.get(City.class, cityPkId);
		System.out.println(cityBean.getCityName()+cityBean.getCityPkId());
		return cityBean;
	}

	@Override
	public Dist getDistBean(int distPkId) {
		Session session = factory.getCurrentSession();
		Dist distBean = session.get(Dist.class, distPkId);
		System.out.println(distBean.getDistName()+distBean.getDistPkId());
		return distBean;
	}

}
