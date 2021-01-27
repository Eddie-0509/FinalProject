package tw.com.uyayi.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.MemberLogInDao;

import tw.com.uyayi.model.Member;

@Repository
public class MemberLogInDaoImpl implements MemberLogInDao {

	@Autowired
	SessionFactory factory ;
	
	
	@SuppressWarnings("unchecked")
	@Override
	public boolean checkLogin(String memberAccount, String memberPwd) {
		Session session = factory.getCurrentSession();
		String hql = "from Member where memberAccount = :mA and memberPwd = :mPwd";
		List<Member> memberList = session.createQuery(hql).setParameter("mA", memberAccount).setParameter("mPwd", memberPwd).getResultList();
		if(memberList.size()<1) {
			return false;
	}else return true;
	
	}

	

	
	@Override
	public Member getMemberByAccount(String memberAccount) {
		Session session = factory.getCurrentSession();
		String hql = "from Member where memberAccount = :mA";
		Member memberBean = (Member) session.createQuery(hql).setParameter("mA", memberAccount).getSingleResult();
		return memberBean;
	}

	

	
	@Override
	public void memberChangePwd(String memberPkId, String pwd) {
		Session session = factory.getCurrentSession();
		String hql = "update Member set memberPwd = :pwd where memberPkId=:id";
		session.createQuery(hql).setParameter("pwd", pwd).setParameter("id", Integer.valueOf(memberPkId)).executeUpdate();
	}


}
