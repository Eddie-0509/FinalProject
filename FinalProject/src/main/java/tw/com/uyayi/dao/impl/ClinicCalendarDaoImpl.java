package tw.com.uyayi.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.ClinicCalendarDao;

@Repository
public class ClinicCalendarDaoImpl implements ClinicCalendarDao {
	
	@Autowired
	SessionFactory factory ;
	
	@Override
	public List<String> getAppointment(){
		Session session=factory.getCurrentSession();
		String hql = "from City";
		return
	};
}
