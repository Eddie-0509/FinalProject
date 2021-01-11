package tw.com.uyayi.dao.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.ClinicCalendarDao;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Member;


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

	@Override
	public LinkedHashMap<String, String> getAppointmentDetail(Integer appointmentID) {
		Session session=factory.getCurrentSession();
		String hql = "from Appointment app where app.appointmentPkId =:appointmentID";
		LinkedHashMap<String, String> appointmentDetail=new LinkedHashMap<String, String>();
		Appointment result = (Appointment) session.createQuery(hql).setParameter("appointmentID",appointmentID).getSingleResult();
		appointmentDetail.put("patientName",result.getMemberBean().getMemberName());
		appointmentDetail.put("patientPhone", result.getMemberBean().getMemberPhone());
		if (result.getMemberBean()==null) {
			appointmentDetail.put("patientName", result.getPatientName());			
			appointmentDetail.put("patientPhone", result.getPatientPhone());			
		}
		appointmentDetail.put("item", result.getItemBean().getItemName());
		appointmentDetail.put("dentistName", result.getDentistBean().getDentistName());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		appointmentDetail.put("date", sdf.format(result.getAppointDate()));
		appointmentDetail.put("time", result.getTimeTableBean().getTimes());
		appointmentDetail.put("reply", result.getMemberReply());
		
		return appointmentDetail;
	}

	@SuppressWarnings("unchecked")
	@Override
	public ArrayList<Appointment> queryAppointmentByPhone(String phone) {
		Session session=factory.getCurrentSession();
		String hqlmem = "from Member mem where mem.memberPhone =:memberPhone";
		Member member=(Member) session.createQuery(hqlmem).setParameter("memberPhone", phone).getSingleResult();
		String hqlapp="";
		ArrayList<Appointment> list=new ArrayList<Appointment>();
		if (member!=null) {
			 hqlapp = "from Appointment app where app.memberBean =:member";
			 list = (ArrayList<Appointment>) session.createQuery(hqlapp).setParameter("member",member).getResultList();
		}else {
			hqlapp = "from Appointment app where app.patientPhone =:phone";	
			list =  (ArrayList<Appointment>) session.createQuery(hqlapp).setParameter("phone",phone).getResultList();
		}
		
		
		return list;
	}

	
}
