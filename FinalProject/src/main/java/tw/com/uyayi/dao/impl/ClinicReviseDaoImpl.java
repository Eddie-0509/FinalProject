package tw.com.uyayi.dao.impl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.ClinicReviseDao;
import tw.com.uyayi.model.Clinic;

@Repository
public class ClinicReviseDaoImpl implements ClinicReviseDao {
	@Autowired
	SessionFactory factory ;
	@Override
	public void update(Clinic clinic) {
		Session session = factory.getCurrentSession();
		String hql ="update Clinic set clinicName=:name,"
				+ " clinicPhone=:phone,"
				+ " clinicCity=:city,"
				+ " clinicDist=:dist,"
				+ " clinicAddress=:address,"
				+ " clinicPwd = :pwd,"
				+ " clinicImage=:image where clinicPkId=:id";
		session.createQuery(hql).setParameter("name", clinic.getClinicName()).setParameter("pwd", clinic.getClinicPwd()).setParameter("phone", clinic.getClinicPhone()).setParameter("city", clinic.getCityBean()).setParameter("dist", clinic.getDistBean()).setParameter("address", clinic.getClinicAddress()).setParameter("image", clinic.getClinicImage()).setParameter("id", clinic.getClinicPkId()).executeUpdate();
	}
	@Override
	public Clinic getClinicById(int clinicPkId) {
		Session session = factory.getCurrentSession();
		return session.get(Clinic.class, clinicPkId);
	}
	
	

}
