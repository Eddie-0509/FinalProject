package tw.com.uyayi.dao.impl;


import java.sql.Date;
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
import tw.com.uyayi.model.Member;
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
	public Clinic getClinicBeanByClinicPkId(Integer clinicPkId) {
		Session session = factory.getCurrentSession();
		String hql = "From Clinic where clinicPkId =:cId";
		List<Clinic> i = session.createQuery(hql).setParameter("cId", clinicPkId).getResultList();
		
		return i.get(0);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Dentist getDentistBeanByDentistPkId(Integer dentistPkId) {
		Session session = factory.getCurrentSession();
		Dentist dentist = new Dentist();
		String hql = "From Dentist where dentistPkId =:dId";
	    List<Dentist> i = session.createQuery(hql).setParameter("dId", dentistPkId).getResultList();
		if (i.get(0)!=null) {
			dentist = i.get(0);
		}
	    return dentist;
	}
	
	
	@SuppressWarnings("unchecked")
	@Override
	public Items getItemsBeanByItemPkId(Integer itemPkId) {
		Session session = factory.getCurrentSession();
		Items item = new Items();
		String hql = "From Items where itemPkId =:iId";
		List<Items> i = session.createQuery(hql).setParameter("iId", itemPkId).getResultList();
		if (i.get(0)!=null) {
			item = i.get(0);
		}
		return item;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public TimeTable getTimeTableBeanByTimePkId(Integer timeTablePkId) {
		Session session = factory.getCurrentSession();
		TimeTable timetable = new TimeTable();
		String hql = "From TimeTable where timeTablePkId =:tId";
		List<TimeTable> i = session.createQuery(hql).setParameter("tId", timeTablePkId).getResultList();
		if (i.get(0)!=null) {
			timetable=i.get(0);
		}
		return timetable;
	}	
	@Override
	public void InsertAppointment(Appointment ap) {
		Session session = factory.getCurrentSession();
		session.save(ap);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Appointment> checkFull(Dentist dentist, String timeTablePkId, String appointmentDate) {
		Session session = factory.getCurrentSession();
		String hql = "from Appointment where dentistPkId=:dId and timeTablePkId = :tId and appointDate = :apD";
		java.sql.Date apDate = java.sql.Date.valueOf(appointmentDate);
		return session.createQuery(hql).setParameter("dId", dentist)
				                       .setParameter("tId",timeTablePkId )
				                       .setParameter("apD", apDate)
				                       .getResultList();
		
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Appointment> showAppointRecord(Integer memberPkId) {
		Session session = factory.getCurrentSession();
		String hql = " From Appointment where memberBean=:mId and appointDate < cast(getdate() as date) ORDER BY appointDate DESC";
		Member memberBean = session.get(Member.class, memberPkId);
		List<Appointment> i = session.createQuery(hql).setParameter("mId", memberBean).getResultList();
		return i;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Appointment> showAppointRecordAfterToday(Integer memberPkId) {
		Session session = factory.getCurrentSession();
		String hql = " From Appointment where memberBean=:mId and appointDate > cast(getdate() as date) ORDER BY appointDate ASC";
		Member memberBean = session.get(Member.class, memberPkId);
		List<Appointment> i = session.createQuery(hql).setParameter("mId", memberBean).getResultList();
		return i;
	}


	@Override
	public void updateMemberReply(Integer apId) {
		Session session = factory.getCurrentSession();
		String hql = "update Appointment ap set ap.memberReply='取消' where appointmentPkId=:apId";
		session.createQuery(hql).setParameter("apId", apId).executeUpdate();           
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public Appointment getAppointment(Integer appointmentPkId) {
		Session session = factory.getCurrentSession();
		String hql = "from Appointment where appointmentPkId=:apId";
		List <Appointment> i = session.createQuery(hql).setParameter("apId", appointmentPkId).getResultList();
		return i.get(0);
	}
	
//	@SuppressWarnings("unchecked")
//	@Override
//	public boolean checkBooked(Integer memberPkId, Integer timeTablePkId, String appointmentDate) {
//		Session session = factory.getCurrentSession();
//		String hql = "from Appointment where memberPkId=:mId and timeTablePkId=:tId and appointDate=:apd";
//		java.sql.Date apDate = java.sql.Date.valueOf(appointmentDate);
//		List<Appointment> i = session.createQuery(hql).setParameter("mId", memberPkId)
//				                    .setParameter("tId", timeTablePkId)
//				                    .setParameter("apd", apDate)
//				                    .getResultList();
//		if (i.get(0)!= null) {
//			return true;
//		}
//		return false;
//	}
	

}
