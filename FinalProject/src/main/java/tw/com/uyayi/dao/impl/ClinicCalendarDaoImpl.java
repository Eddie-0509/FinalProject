package tw.com.uyayi.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.ClinicCalendarDao;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;


@Repository
public class ClinicCalendarDaoImpl implements ClinicCalendarDao {
	
	@Autowired
	SessionFactory factory ;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Appointment> getAppointmentByDentist(Integer dentistID){
		Session session=factory.getCurrentSession();
		String hql = "from Appointment app where app.dentistBean =:dentist";
		List<Appointment> list=new ArrayList<Appointment>();
		Dentist dentist=(Dentist) session.
				createQuery("from Dentist dentist where dentist.dentistPkId =:dentistID").
				setParameter("dentistID",dentistID).getSingleResult();
		list=session.createQuery(hql).setParameter("dentist",dentist).getResultList();
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Dentist> getDentistList(Integer clinicID) {
		Session session=factory.getCurrentSession();
		String hql = "from Dentist dentist where dentist.clinicBean =:clinic";
		Clinic clinic=(Clinic) session.
				createQuery("from Clinic clinic where clinic.clinicPkId =:clinicID").
				setParameter("clinicID",clinicID).getSingleResult();
		List<Dentist> list=new ArrayList<Dentist>();
		list=session.createQuery(hql).setParameter("clinic",clinic).getResultList();
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Appointment> getAllAppointmentByClinic(Integer clinicID) {
		Session session=factory.getCurrentSession();
		String hql = "from Appointment app where app.clinicBean =:clinic";
		List<Appointment> list=new ArrayList<Appointment>();
		Clinic clinic=(Clinic) session.
				createQuery("from Clinic clinic where clinic.clinicPkId =:clinicID").
				setParameter("clinicID",clinicID).getSingleResult();
		list=session.createQuery(hql).setParameter("clinic",clinic).getResultList();
		return list;
	}

	
}
