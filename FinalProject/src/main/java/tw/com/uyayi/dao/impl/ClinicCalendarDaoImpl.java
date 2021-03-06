package tw.com.uyayi.dao.impl;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.ClinicCalendarDao;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.MemberDetails;


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
		if (result.getMemberBean()==null) {
			appointmentDetail.put("patientName", result.getPatientName());			
			appointmentDetail.put("patientPhone", result.getPatientPhone());			
		}else {
		appointmentDetail.put("patientName",result.getMemberBean().getMemberName());
		appointmentDetail.put("patientPhone", result.getMemberBean().getMemberPhone());
		appointmentDetail.put("email", result.getMemberBean().getMemberAccount());
		appointmentDetail.put("memberID", Integer.toString(result.getMemberBean().getMemberPkId()));		
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
		List member = session.createQuery(hqlmem).setParameter("memberPhone", phone).getResultList();
		String hqlapp="";
		ArrayList<Appointment> list=new ArrayList<Appointment>();
		if (!member.isEmpty()) {
			 hqlapp = "from Appointment app where app.memberBean =:member";
			 list = (ArrayList<Appointment>) session.createQuery(hqlapp).setParameter("member",member).getResultList();
		}else {
			hqlapp = "from Appointment app where app.patientPhone =:phone";	
			list =  (ArrayList<Appointment>) session.createQuery(hqlapp).setParameter("phone",phone).getResultList();
		}
		
		
		return list;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public String absentReport(Integer appointmentID) {
		Session session=factory.getCurrentSession();
		String hql0 = "from Appointment app where app.appointmentPkId= :appointmentID";
		
		List<Appointment> list=session.createQuery(hql0).setParameter("appointmentID", appointmentID).getResultList();
//		System.out.println(list.get(0).getArrive());
		String msg="";
		if(list.get(0).getArrive().equals("false")) {
			msg= "您已回報過此人未到診";
		}else if(list.isEmpty()){
			msg= "錯誤";
		}else {
			String hql = "update Appointment app set app.arrive = 'false' where app.appointmentPkId= :appointmentID";
			session.createQuery(hql).setParameter("appointmentID", appointmentID).executeUpdate();
			msg= "回報成功";			
		}
		return msg;
	}

	@Override
	public ArrayList<Items> getItemByDentist(Clinic clinic, String dentist) {
		Session session=factory.getCurrentSession();
		String hqld="Select itemsBean From Dentist d where d.clinicBean =:clinic and d.dentistName =:dentist";
		ArrayList<Items> itemB =(ArrayList<Items>) session.createQuery(hqld).setParameter("clinic", clinic).setParameter("dentist", dentist).getResultList();
//		System.out.println(itemB.get(0).getItemName());
		return itemB;
	}

	@Override
	public void updateAppointment(Integer appointmentID, String updateItem, String updateReply) {
		Session session=factory.getCurrentSession();
		String hqli = "from Items i where i.itemName =:itemName";
		List<Items> item = session.createQuery(hqli).setParameter("itemName", updateItem).getResultList();
		String hqla = "update Appointment app set app.itemBean =:item , app.memberReply =:reply where app.appointmentPkId= :appointmentID";
		session.createQuery(hqla).setParameter("item", item.get(0)).setParameter("reply", updateReply).setParameter("appointmentID", appointmentID).executeUpdate();
	}

	@Override
	public void deleteAppointment(int appointmentId) {
		Session session=factory.getCurrentSession();
		String hqla = "delete Appointment app where app.appointmentPkId= :appointmentID";
		session.createQuery(hqla).setParameter("appointmentID", appointmentId).executeUpdate();		
	}

	@SuppressWarnings("unchecked")
	@Override
	public LinkedHashMap<String, String> getmedicalRecord(int memberID) {
		Session session=factory.getCurrentSession();
		String hqlm = "from Member m where m.memberPkId =:memberID";
		List<Member> listOfMember = session.createQuery(hqlm).setParameter("memberID", memberID).getResultList();
		String hqlmd = "from MemberDetails md where md.member =:member";
		List<MemberDetails>  listOfMemberDetail = session.createQuery(hqlmd).setParameter("member", listOfMember.get(0)).getResultList();
		LinkedHashMap<String, String> medicalRecord=new LinkedHashMap<String, String>();
		medicalRecord.put("EmergencyContact", listOfMemberDetail.get(0).getEmergencyContact());
		medicalRecord.put("EmergencyNumber", listOfMemberDetail.get(0).getEmergencyNumber());
		medicalRecord.put("EmergencyRelationship", listOfMemberDetail.get(0).getEmergencyRelationship());
		medicalRecord.put("Smoke", listOfMemberDetail.get(0).getSmoke());
		medicalRecord.put("BetelNut", listOfMemberDetail.get(0).getBetelNut());
		medicalRecord.put("Diseases", listOfMemberDetail.get(0).getDiseases());
		medicalRecord.put("Allergy", listOfMemberDetail.get(0).getAllergy());
		medicalRecord.put("Surgery", listOfMemberDetail.get(0).getSurgery());
		return medicalRecord;
	}

	
}
