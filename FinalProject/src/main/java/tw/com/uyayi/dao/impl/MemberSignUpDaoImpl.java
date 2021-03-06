

package tw.com.uyayi.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import tw.com.uyayi.dao.MemberSignUpDao;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Member;


@Repository
public class MemberSignUpDaoImpl implements MemberSignUpDao {

	@Autowired
	SessionFactory factory ;
	
	@Autowired
	private SessionFactory sessionfactory ;
	
	public Session getSession() {
		return sessionfactory.getCurrentSession();
		
	}
	
	
	@Override
	public void add(Member member) {
	    getSession().save(member);

	}

	@Override
	public void delete(int memberPkId) {
		getSession().delete(getone(memberPkId));

	}

	@Override
	public void update(Member member) {
		getSession().update(member);

	}


	@Override
	public Member getone(int memberPkId) {
     return getSession().get(Member.class, memberPkId);
		
	}

    @SuppressWarnings("unchecked")
	@Override
	public List<Member> getAll() {
		String hql = "from member";
		return getSession().createQuery(hql).list();
	}

    @SuppressWarnings("unchecked")
	@Override
	public boolean checkEmail(String memberEmail) {
    	Session session = factory.getCurrentSession();
        String hql = "from Member where memberAccount = :email";
        List<Member> memberList = session.createQuery(hql).setParameter("email", memberEmail).getResultList();
    	
        if(memberList.size() < 1) {
			return true;
		}else return false;
	}

    
    


	@Override 
	public void changeStatus(int memberPkId) {
		Session session = factory.getCurrentSession();
		String sql = "update member set memberStatus = :status where memberPkId = :id";
		session.createSQLQuery(sql).setParameter("status", "已開通").setParameter("id", memberPkId).executeUpdate();
	}
    



	
}
