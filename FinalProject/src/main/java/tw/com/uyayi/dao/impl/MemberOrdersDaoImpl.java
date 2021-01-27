package tw.com.uyayi.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.MemberOrdersDao;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.Orders;


@Repository
public class MemberOrdersDaoImpl implements MemberOrdersDao {

	@Autowired
	SessionFactory factory ;
	

	@SuppressWarnings("unchecked")
	@Override
	public List<Orders> getAll(int id) {
		Session session = factory.getCurrentSession();
		String hql = "from Orders where memberBean=:id";
		List<Orders> a = session.createQuery(hql).setParameter("id", session.get(Member.class, id)).getResultList();
		
//		session.clear();
		return a;
	}
	

	
}
