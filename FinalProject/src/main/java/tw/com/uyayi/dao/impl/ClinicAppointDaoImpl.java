package tw.com.uyayi.dao.impl;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.ClinicAppointDao;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;

@Repository
public class ClinicAppointDaoImpl implements ClinicAppointDao {

	@Autowired
	SessionFactory factory ;
	
	@Override
	public LinkedHashSet<Items> getClinicItem(Clinic clinic) {
		Session session=factory.getCurrentSession();
//		String hqld = "from Dentist d where d.clinicBean =:clinic";
//		ArrayList<Dentist> dentistlist = (ArrayList<Dentist>) session.createQuery(hqld).setParameter("clinic",clinic).getResultList();
		Set<Dentist> den = clinic.getDentists();
		List<Dentist> denn = new ArrayList<Dentist>(den);
		LinkedHashSet<Items> itemlist =new LinkedHashSet<Items>();
		System.out.println("--------");
		System.out.println(den);
		System.out.println(clinic.getClinicAccount());
		System.out.println("--------");
		for (int i=0;i<denn.size();i++) {
			itemlist.addAll((denn.get(i).getItemsBean()));
		}
		return itemlist;
	}

}