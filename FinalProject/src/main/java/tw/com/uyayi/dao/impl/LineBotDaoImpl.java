package tw.com.uyayi.dao.impl;

import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.LineBotDao;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Member;

@Repository
public class LineBotDaoImpl implements LineBotDao {
	@Autowired
	SessionFactory factory;
	
	
	@SuppressWarnings("unchecked")
	@Override
	public boolean checkUserId(String userId) {
		Session session = factory.getCurrentSession();
		String hql = "from Member where memberLineId = :id";
		List<Member> mList = session.createQuery(hql).setParameter("id", userId).getResultList();
		if(mList.size()<1) {
			return false;
		}else return true;
	}


	@SuppressWarnings("unchecked")
	@Override
	public boolean updateMemberLineId(String userId, String lineText) {
		Session session = factory.getCurrentSession();
		String hql = "update Member set memberLineId = :lineId where memberIdNumber = :mId";
		String hqlcheck = "from Member where memberIdNumber= :mid";
		List<Member> mList = session.createQuery(hqlcheck).setParameter("mid", lineText).getResultList();
		if(mList.size()<1) {
			return false;
			
		}else {
			session.createQuery(hql).setParameter("lineId", userId).setParameter("mId", lineText).executeUpdate();
			return true;
		}
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Appointment> getAppointment(String userId) {
		Session session = factory.getCurrentSession();
		String sql = "select appointmentPkId from Appointment as a join Member as m on a.memberPkId = m.memberPkId"
				+ " where m.memberLineId = :lId"
				+ " and appointDate between cast(getdate() as date) and dateadd(year, 1, getdate())"
				+ " order by appointDate, timeTablePkId";
		List<Integer> idList = session.createSQLQuery(sql).setParameter("lId", userId).getResultList();
		List<Appointment> aList = new LinkedList<Appointment>();
		if(idList.size()>0) {
			
		for (int i = 0; i < idList.size(); i++) {
			aList.add(session.get(Appointment.class, idList.get(i))); 
		}
		}
	return aList;
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Appointment> getClinicAppoint(Clinic clinic) {
		Session session = factory.getCurrentSession();
		String hql = "from Appointment where clinicBean = :cB and"
				+ " appointDate > cast(getdate() as date) and appointDate < dateadd(DAY, 1, getdate())";
		return session.createQuery(hql).setParameter("cB", clinic).getResultList();
	}


	@Override
	public Appointment getAppointmentById(String appointmentPkId) {
		Session session = factory.getCurrentSession();
		Appointment a = session.get(Appointment.class, Integer.valueOf(appointmentPkId));
		return a;
	}


	@Override
	public Appointment cancelAppoint(String appointmentPkId) {
		Session session = factory.getCurrentSession();
		Appointment a = session.get(Appointment.class, Integer.valueOf(appointmentPkId));
		if(a.getMemberReply().equals("未回覆")) {
			String hql = "update Appointment set memberReply = '取消' where appointmentPkId = :id";
			session.createQuery(hql).setParameter("id", Integer.valueOf(appointmentPkId)).executeUpdate();
		}
		return a;
	}


	@Override
	public Appointment confirmAppoint(String appointmentPkId) {
		Session session = factory.getCurrentSession();
		Appointment a = session.get(Appointment.class, Integer.valueOf(appointmentPkId));
		if(a.getMemberReply().equals("未回覆")) {
			String hql = "update Appointment set memberReply = '確定前往' where appointmentPkId = :id ";
			session.createQuery(hql).setParameter("id", Integer.valueOf(appointmentPkId)).executeUpdate();
		}
		return a;
	}

}
