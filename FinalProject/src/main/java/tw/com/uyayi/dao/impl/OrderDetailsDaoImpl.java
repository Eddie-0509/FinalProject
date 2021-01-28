package tw.com.uyayi.dao.impl;

import java.lang.reflect.Member;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.OrderDetailsDao;

import tw.com.uyayi.model.OrderDetails;

@Repository
public class OrderDetailsDaoImpl implements OrderDetailsDao{

	@Autowired
	SessionFactory factory ;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<OrderDetails> getAllOrders(int id) {
		Session session = factory.getCurrentSession();
		String hql = "from OrderDetails where orderPkId=:id";
		List<OrderDetails> a = session.createQuery(hql).setParameter("id", session.get(Member.class, id)).getResultList();
		session.clear();
		return a;
	}

}



