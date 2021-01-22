package tw.com.uyayi.dao.impl;


import java.util.LinkedList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import tw.com.uyayi.dao.AppointmentDao;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.TimeTable;

@Repository
public class AppointmentDaoImpl implements AppointmentDao {

	@Autowired
	SessionFactory factory;

	@SuppressWarnings("unchecked")
	@Override
	public List<Dentist> getDoctor(Integer itemPkId, Integer timeTablePkId, Integer ClinicPkId) {
		Session session = factory.getCurrentSession();
		String sqlStr = ""
				+ "";
		List<Integer> dentistId = session.createSQLQuery(sqlStr)
				                .setParameter("iId", itemPkId)
				                .setParameter("tId", timeTablePkId)
				                .setParameter("cId", ClinicPkId).getResultList();
		List<Dentist> dentistList = new LinkedList<Dentist>();
		for (int i = 0; i < dentistId.size(); i++) {
			dentistList.add(session.get(Dentist.class, dentistId.get(i)));
		}
		return dentistList;
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Items> getAllItems() {
		Session session = factory.getCurrentSession();
		String hql = "From Items";
		List<Items> i = session.createQuery(hql).getResultList();
		for (int j = 0; j < i.size(); j++) {
			System.out.println(i.get(j).getItemName());
		}
		return i;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<TimeTable> getTimeTable(String weekdays) {
		Session session = factory.getCurrentSession();
		String hql = "From TimeTable where weekdays =:wid";
		List<TimeTable> i = session.createQuery(hql).setParameter("wid", weekdays).getResultList();
		return i;
	}

	@SuppressWarnings("unchecked")
	@Override
	public Clinic getClinicBeanByClinicPkId(String clinicPkId) {
		Session session = factory.getCurrentSession();
		String hql = "From Clinic where clinicPkId =:cId";
		List<Clinic> i = session.createQuery(hql).setParameter("cId", clinicPkId).getResultList();
		return i.get(0);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Dentist getDentistBeanByDentistPkId(String dentistPkId) {
		Session session = factory.getCurrentSession();
		String hql = "From Dentist where dentistPkId =:dId";
	    List<Dentist> i = session.createQuery(hql).setParameter("dId", dentistPkId).getResultList();
		return i.get(0);
	}
	
	
	@SuppressWarnings("unchecked")
	@Override
	public Items getItemsBeanByItemPkId(String itemPkId) {
		Session session = factory.getCurrentSession();
		String hql = "From Items where itemPkId =:iId";
		List<Items> i = session.createQuery(hql).setParameter("iId", itemPkId).getResultList();
		return i.get(0);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public TimeTable getTimeTableBeanByTimePkId(String timeTablePkId) {
		Session session = factory.getCurrentSession();
		String hql = "From TimeTable where timeTablePkId =:tId";
		List<TimeTable> i = session.createQuery(hql).setParameter("tId", timeTablePkId).getResultList();
		return i.get(0);
	}
	
	@Override
	public void InsertAppointment(Appointment ap) {
		Session session = factory.getCurrentSession();
		session.save(ap);
	}

	@Override
	public Appointment updateArrive(int memberPkId) {
		return null;
	}









}
