package tw.com.uyayi.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import tw.com.uyayi.dao.MemberDao;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.MemberDetails;
@Repository
public class MemberDaoImpl implements MemberDao {
	@Autowired
	SessionFactory factory;


	@SuppressWarnings("unchecked")
	@Override
	public boolean checkLogin(String account, String pwd) {
		String hql = "From Member where memberIdNumber =:mAccount and memberPwd =:mPwd";
		boolean loginStatus = false;
		Session session = factory.getCurrentSession();
		List<Member> list = session.createQuery(hql)
				.setParameter("mAccount", account)
				.setParameter("mPwd", pwd)
				.getResultList();
		if(list.size()>0) {
			loginStatus=true;

		}
		
		return loginStatus;
	}

	
	@SuppressWarnings("unchecked")
	@Override
	public Member getMemberByAccount(String account) {
		String hql = "From Member where memberIdNumber =:mAccount";
		Member mb = null;
		Session session = factory.getCurrentSession();
		List<Member> list = session.createQuery(hql)
				.setParameter("mAccount", account)
				.getResultList();
		if(list.size()>0) {
			 mb = list.get(0);
		}
		return mb;
	}


	@SuppressWarnings("unchecked")
	@Override
	public MemberDetails getMemberDetailByPkId(int memberPkId) {
		String hql = "From MemberDetails where memberPkId =:mId";
		MemberDetails md = null;
		Session session = factory.getCurrentSession();
		List<MemberDetails> list = session.createQuery(hql)
				.setParameter("mId", memberPkId)
				.getResultList();
		if(list.size()>0) {
			 md = list.get(0);
		}
		return md;
	}


}
