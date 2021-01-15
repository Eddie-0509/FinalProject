package tw.com.uyayi.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.ClinicLogInDao;
import tw.com.uyayi.model.Clinic;

@Repository
public class ClinicLogInDaoImpl implements ClinicLogInDao {

	@Autowired
	SessionFactory factory ;
	
	@SuppressWarnings("unchecked")
	@Override
	public boolean checkLogin(String clinicAccount, String clinicPwd) {
		Session session = factory.getCurrentSession();
		String hql = "from Clinic where clinicAccount = :cA and clinicPwd = :cPwd";
		List<Clinic> clinicList = session.createQuery(hql).setParameter("cA", clinicAccount).setParameter("cPwd", clinicPwd).getResultList();
		if(clinicList.size()<1) {
			return false;
		}else return true;
		
	}

	@Override
	public Clinic getClinicByAccount(String clinicAccount) {
		Session session = factory.openSession();
		String hql = "from Clinic where clinicAccount = :cA";
		Clinic clinicBean  = (Clinic) session.createQuery(hql).setParameter("cA", clinicAccount).getSingleResult();
		return clinicBean;
	}

}
