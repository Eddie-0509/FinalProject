package tw.com.uyayi.dao.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.DentistDao;
import tw.com.uyayi.model.Dentist;
import tw.com.uyayi.model.Items;
import tw.com.uyayi.model.TimeTable;

@Repository
public class DentistDaoImpl implements DentistDao {
	
	@Autowired
	SessionFactory factory;
	@SuppressWarnings("unchecked")
	@Override
	public Dentist getDentistById(int dentistPkId) {
		Session session = factory.getCurrentSession();
		String hql = "from Dentist where dentistPkId = :id";
		List<Dentist> dentistList =session.createQuery(hql).setParameter("id", dentistPkId).getResultList();
		return dentistList.get(0);
	}
	
	
	@SuppressWarnings("unchecked")
	@Override
	public List<String> getTimeString() {
		Session session = factory.getCurrentSession();
		String hql = "select times from TimeTable where weekdays= :sunday";
		List<String> timeStringList = session.createQuery(hql).setParameter("sunday", "Sunday").getResultList();
		return timeStringList;
	}


	@SuppressWarnings("unchecked")
	@Override
	public Items getItemBeanbyId(int itemId) {
		Session session = factory.getCurrentSession();
		String hql ="from Items where itemPkId = :id";
		List<Items> itemList = session.createQuery(hql).setParameter("id", itemId).getResultList();
		return itemList.get(0);
	}


	@SuppressWarnings("unchecked")
	@Override
	public TimeTable getTimeBeanbyId(int timeId) {
		Session session = factory.getCurrentSession();		
		String hql = "from TimeTable where timeTablePkId = :id";
		List<TimeTable> timeList = session.createQuery(hql).setParameter("id", timeId).getResultList();
		return timeList.get(0);
	}


	@Override
	public void addNewDentist(Dentist dentistBean) {
		Session session = factory.getCurrentSession();		
		session.save(dentistBean);
	}


	@SuppressWarnings("unchecked")
	@Override
	public List<Dentist> getDentistbyClinicPkId(int clinicPkId) {
		Session session = factory.getCurrentSession();	
		String hql = "from Dentist where clinicPkId = :id";
		List<Dentist> dentistList = session.createQuery(hql).setParameter("id", clinicPkId).getResultList();
		return dentistList;
	}


	@Override
	public void reviseDentist(int dentistPkId, Set<Items> itemsSet, Set<TimeTable> timeSet) {
		Session session = factory.getCurrentSession();
		String hql = "update Dentist d set d.timeTables=:time, d.itemsBean=:item where d.dentistPkId = :id";
		session.createQuery(hql).setParameter("time", timeSet).setParameter("item", itemsSet).setParameter("id", dentistPkId).executeUpdate();
	}

}
