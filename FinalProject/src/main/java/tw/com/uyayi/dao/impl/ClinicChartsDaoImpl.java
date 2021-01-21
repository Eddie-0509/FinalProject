package tw.com.uyayi.dao.impl;

import java.util.LinkedHashMap;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.ClinicChartsDao;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;

@Repository
public class ClinicChartsDaoImpl implements ClinicChartsDao{
	
	@Autowired
	SessionFactory factory ;
	
	@Override
	public LinkedHashMap<String,Integer> getItemsData(Clinic clinic) {
		Session session = factory.getCurrentSession();
		String hql = "From Appointment a where a.clinicBean =:clinic";
		List<Appointment> allAppList = session.createQuery(hql).setParameter("clinic", clinic).getResultList();
		LinkedHashMap<String,Integer> ItemData=new LinkedHashMap<String,Integer>();
		List<String> ItemNamelist = session.createQuery("Select itemName from Items").getResultList();
		for (int i=0;i<ItemNamelist.size();i++) {
			ItemData.put(ItemNamelist.get(i), 0);
		}
		for (int i=0;i<allAppList.size();i++) {
			for(Object key : ItemData.keySet()) {
				if(allAppList.get(i).getItemBean().getItemName().equals(key.toString())) {
					int plus = ItemData.get(key.toString())+1;
					ItemData.put(key.toString(),plus);
				}
			}
		}
		return ItemData;
	}

	@SuppressWarnings("unchecked")
	@Override
	public LinkedHashMap<String, Integer> getDentistData(Clinic clinic) {
		Session session = factory.getCurrentSession();
		String hql = "From Appointment a where a.clinicBean =:clinic";
		List<Appointment> allAppList = session.createQuery(hql).setParameter("clinic", clinic).getResultList();
		LinkedHashMap<String,Integer> DentistData=new LinkedHashMap<String,Integer>();
		List<String> Dentistlist = session.createQuery("Select dentistName from Dentist d where d.clinicBean =:clinic")
				.setParameter("clinic", clinic).getResultList();
		for (int i=0;i<Dentistlist.size();i++) {
			DentistData.put(Dentistlist.get(i), 0);
		}
		for (int i=0;i<allAppList.size();i++) {
			for(Object key : DentistData.keySet()) {
				if(allAppList.get(i).getDentistBean().getDentistName().equals(key.toString())) {
					int plus = DentistData.get(key.toString())+1;
					DentistData.put(key.toString(),plus);
				}
			}
		}
		return DentistData;
	}
	
}
