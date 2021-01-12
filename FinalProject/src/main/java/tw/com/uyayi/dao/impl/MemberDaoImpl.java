package tw.com.uyayi.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.MemberDao;
import tw.com.uyayi.model.Member;
@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	SessionFactory factory;

	@SuppressWarnings("unchecked")
	@Override
	public Member getMember(String account, String pwd) {
		String hql = "From Member where memberAccount =:mAccount and memberPwd =:mPwd";
		Member mb = null;
		Session session = factory.getCurrentSession();
		List<Member> list = session.createQuery(hql)
				.setParameter("mAccount", account)
				.setParameter("mPwd", pwd)
				.getResultList();
		if(list.size()>0) {
			 mb = list.get(0);
		}
		return mb;
	}

}