

package tw.com.uyayi.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import tw.com.uyayi.dao.MemberSignUpDao;
import tw.com.uyayi.model.Member;


@Repository
public class MemberSignUpDaoImpl implements MemberSignUpDao {

	
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
     return getSession().load(Member.class, memberPkId);
		
	}

    @SuppressWarnings("unchecked")
	@Override
	public List<Member> getAll() {
		String hql = "from member";
		return getSession().createQuery(hql).list();
	}

    
 

}
