package tw.com.uyayi.dao.impl;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.AppointmentDao;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.City;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Dist;
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
		String sqlStr = "select d.dentistPkId from dentist as d join dentistItem as di on d.dentistPkid=di.dentistPkId join dentistTime as dt on d.dentistPkId=dt.dentistPkId join clinic as c on d.clinicPkId=c.clinicPkId where itemPkId=:iId and timeTablePkId=:tId and ClinicDist=:cId";
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
	public List<Clinic> getClinicByAppointment(Integer clinicdist, String appointDate, Integer timeTableId,
			Integer itemId) {
		Session session = factory.getCurrentSession();
		String hql = "from Appointment where clinicPkId =:cid and appointDate =:apdate and timetablePkId =:time and itemPkId =:item";
		List<Clinic> clinic = session.createQuery(hql).setParameter("cid", clinicdist)
				.setParameter("apdate", appointDate).setParameter("time", timeTableId).setParameter("item", itemId)
				.getResultList();
		for (int j = 0; j < clinic.size(); j++) {
			System.out.println(clinic.get(j).getClinicName());
		}
		return clinic;
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

	@Override
	public void InsertAppointment(int memberPkId) {

	}

	@Override
	public Appointment updateArrive(int memberPkId) {
		return null;
	}

}
