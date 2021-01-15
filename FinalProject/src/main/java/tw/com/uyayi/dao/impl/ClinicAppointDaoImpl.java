package tw.com.uyayi.dao.impl;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.ClinicAppointDao;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.TimeTable;

@Repository
public class ClinicAppointDaoImpl implements ClinicAppointDao {

	@Autowired
	SessionFactory factory ;
	
	@Override
	public LinkedHashSet<Items> getClinicItem(Clinic clinic) {
//		Session session=factory.getCurrentSession();
//		String hqld = "from Dentist d where d.clinicBean =:clinic";
//		ArrayList<Dentist> dentistlist = (ArrayList<Dentist>) session.createQuery(hqld).setParameter("clinic",clinic).getResultList();
		Set<Dentist> den = clinic.getDentists();
		List<Dentist> denn = new ArrayList<Dentist>(den);
		LinkedHashSet<Items> itemlist =new LinkedHashSet<Items>();
		for (int i=0;i<denn.size();i++) {
			itemlist.addAll((denn.get(i).getItemsBean()));
		}
		return itemlist;
	}

	@Override
	public List<Dentist> getDentist(Clinic clinic,String item) {
		Set<Dentist> den = clinic.getDentists();
		List<Dentist> denn = new ArrayList<Dentist>(den);
		List<Dentist> thisDentistList=new ArrayList<Dentist>();
//		System.out.println("=================================");
//		System.out.println("denn"+denn);
//		System.out.println("=================================");
		for (int i=0;i<denn.size();i++) {
//			Items bean = (Items) denn.get(i).getItemsBean();
			System.out.println("dennItemBean"+denn.get(i).getItemsBean());
			Set<Items> itemsBean = denn.get(i).getItemsBean();
			List<Items> itemsBeann=new ArrayList<Items>(itemsBean);
			for(int r=0;r<itemsBeann.size();r++) {
				String name = itemsBeann.get(r).getItemName();
//				System.out.println("=================================");
//				System.out.println("name"+name);
//				System.out.println("=================================");
				if(name.equals(item)) {					
					thisDentistList.add(denn.get(i));
//					System.out.println("thisDentistList"+thisDentistList);
				}
			}

		}
		return thisDentistList;
	}

	@Override
	public List<TimeTable> getDentistTime(Clinic clinic, String dentist) {
		
		return null;
	}

}