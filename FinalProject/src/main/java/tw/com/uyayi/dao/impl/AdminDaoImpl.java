package tw.com.uyayi.dao.impl;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.AdminDao;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Coupon;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.Orders;
import tw.com.uyayi.model.Products;

@Repository
public class AdminDaoImpl implements AdminDao {

	@Autowired
	SessionFactory factory;
	
	@Override
	@SuppressWarnings("unchecked")
	public List<Products> getAllProducts() {
		String hql = "From Products";
		Session session = factory.getCurrentSession();
		List<Products> list = session.createQuery(hql).getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Products> getAllProductsByCategory(String h_productCategory) {
		String hql = "From Products where productCategory = :pCategory";
		Session session = factory.getCurrentSession();
		List<Products> list = session.createQuery(hql)
				.setParameter("pCategory", h_productCategory)
				.getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Products> getAllProductsByStatus(String h_status) {
		String hql = "From Products where productStatus = :pStatus";
		Session session = factory.getCurrentSession();
		List<Products> list = session.createQuery(hql)
				.setParameter("pStatus", h_status)
				.getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Products> getAllProductsByCategoryAndStatus(String h_productCategory, String h_status) {
		String hql = "From Products where productCategory = :pCategory and productStatus = :pStatus";
		Session session = factory.getCurrentSession();
		List<Products> list = session.createQuery(hql)
				.setParameter("pCategory", h_productCategory)
				.setParameter("pStatus", h_status)
				.getResultList();
		return list;
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Products> getAllProductsByName(String keyName) {
		String hql ="From Products where productName like :pName";
		Session session = factory.getCurrentSession();
		List<Products> list = session.createQuery(hql)
				.setParameter("pName", "%"+keyName+"%")
				.getResultList();
		return list;
	}
	//未使用
	@SuppressWarnings("unchecked")
	@Override
	public List<String> getProductName(String keyName) {
		String hql ="Select productName From Products where productName like :pName";
		Session session = factory.getCurrentSession();
		List<String> list = session.createQuery(hql)
				.setParameter("pName", "%"+keyName+"%")
				.getResultList();
		return list;
	}
	
	@Override
	public void insertProduct(Products product) {
		Session session = factory.getCurrentSession();
		session.save(product);
	}

	@Override
	public void updateProduct(Products product) {
		String hql = "Update Products set productName = :pName, " 
			+ "productUpdateDate = :pUpdateDate, "
			+ "productPrice = :pPrice, " 
			+ "productQuantity = :pQuantity, " 
			+ "productStatus = : pStatus, "
			+ "productImage = :pImage, " 
			+ "productCategory = :pCategory, " 
			+ "productProfile = :pProfile, "
			+ "productSpec = :pSpec  " 
			+ "where productPkId = :pId";
		Session session = factory.getCurrentSession();
			session	.createQuery(hql)
		.setParameter("pName", product.getProductName())
		.setParameter("pUpdateDate", product.getProductUpdateDate())
		.setParameter("pPrice", product.getProductPrice())
		.setParameter("pQuantity", product.getProductQuantity())
		.setParameter("pStatus", product.getProductStatus())
		.setParameter("pImage", product.getProductImage())
		.setParameter("pCategory", product.getProductCategory())
		.setParameter("pProfile", product.getProductProfile())
		.setParameter("pSpec", product.getProductSpec())
		.setParameter("pId", product.getProductPkId())
		.executeUpdate();

	}

	@Override
	public Date getToday() {
		java.util.Date today = new java.util.Date();
		DateFormat df=new SimpleDateFormat("yyyy-MM-dd");
		Date sqldate = Date.valueOf(df.format(today));
		return sqldate;
	}
	@Override
	@SuppressWarnings("unchecked")
	public List<Clinic> getAllClinic() {
		String hql = "From Clinic";
		Session session = factory.getCurrentSession();
		List<Clinic> list = session.createQuery(hql).getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Clinic> getAllClinicByCity(String h_clinicCity) {
		String hql ="From Clinic Where clinicCity like :cCity";
		int city =Integer.valueOf(h_clinicCity) ;
		Session session = factory.getCurrentSession();
		List<Clinic> list = session.createQuery(hql)
		.setParameter("cCity", city)
		.getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Clinic> getAllClinicByStatus(String h_status) {
		String hql ="From Clinic Where clinicStatus like :cStatus";
		Session session = factory.getCurrentSession();
		List<Clinic> list = session.createQuery(hql)
		.setParameter("cStatus", h_status)
		.getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Clinic> getAllClinicByCityAndStatus(String h_clinicCity, String h_status) {
		String hql ="From Clinic Where clinicCity like :cCity and clinicStatus like :cStatus";
		int city =Integer.valueOf(h_clinicCity) ;
		Session session = factory.getCurrentSession();
		List<Clinic> list = session.createQuery(hql)
		.setParameter("cCity", city)
		.setParameter("cStatus", h_status)
		.getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Clinic> getAllClinicByName(String keyName) {
		String hql ="From Clinic Where clinicName like :cName ";
		Session session = factory.getCurrentSession();
		List<Clinic> list = session.createQuery(hql)
		.setParameter("cName", "%"+keyName+"%")
		.getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public Clinic getClinicById(int clinicPkId) {
		String hql = "From Clinic Where clinicPkId like :cId";
		Session session = factory.getCurrentSession();
		List<Clinic> list=session.createQuery(hql)
		.setParameter("cId", clinicPkId)
		.getResultList();
		Clinic clinic = null;
		if(list.get(0)!=null) {
			clinic=list.get(0);
		}
		return clinic;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Appointment> getClinicAppointmentFromId(int clinicPkId) {
		String hql ="From Appointment Where clinicPkId like :cId";
		Session session = factory.getCurrentSession();
		List<Appointment> list=session.createQuery(hql)
				.setParameter("cId", clinicPkId)
				.getResultList();
		return list;
	}
	@Override
	@SuppressWarnings("unchecked")
	public List<Member> getAllMember() {
		String hql = "From Member where memberStatus not like 'admin'";
		Session session = factory.getCurrentSession();
		List<Member> list = session.createQuery(hql).getResultList();
		return list;
	}

	@Override
	public void updateMemberStatus(int memberPkId,String string) {
		String hql = "Update Member set memberStatus = :mStatus where memberPkId = :mId "; 
		Session session = factory.getCurrentSession();
		session.createQuery(hql)
			.setParameter("mStatus", string)
			.setParameter("mId", memberPkId)
			.executeUpdate();
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Member> getAllMemberByStatus(String h_memberStatus) {
		String hql = "From Member where memberStatus = :mStatus";
		Session session = factory.getCurrentSession();
		List<Member> list = session.createQuery(hql)
			.setParameter("mStatus",h_memberStatus)
			.getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Member> getAllMemberByName(String keyName) {
		String hql ="From Member where memberName like :mName and memberPkId is not 1";
		String mName = "%"+keyName + "%";
		Session session = factory.getCurrentSession();
		List<Member> list = session.createQuery(hql)
		.setParameter("mName", mName)
		.getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Appointment> getMemberAppointmentFromId(int memberPkId) {
		String hql = "From Appointment where memberPkId = :mId";
		Session session = factory.getCurrentSession();
		List<Appointment> list = session.createQuery(hql)
			.setParameter("mId",memberPkId)
			.getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Orders> getMemberOrderFromId(int memberPkId) {
		String hql = "From Orders where memberPkId = :mId";
		Session session = factory.getCurrentSession();
		List<Orders> list = session.createQuery(hql)
			.setParameter("mId",memberPkId)
			.getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public Member getMemberById(int memberPkId) {
		String hql = "From Member where memberPkId = :mId";
		Member member = null;
		Session session = factory.getCurrentSession();
		List<Member> list = session.createQuery(hql)
				.setParameter("mId", memberPkId)
				.getResultList();
		if(list.get(0) != null) {
			member = list.get(0);			
		}
		return member;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Coupon> getAllCoupon() {
		String hql = "From Coupon";
		Session session = factory.getCurrentSession();
		List<Coupon>list=session.createQuery(hql)
			.getResultList();
		return list;
	}
	@Override
	public void insertCoupon(Coupon coupon) {
		Session session = factory.getCurrentSession();
		session.save(coupon);
	}
	@Override
	public void updateCoupon(Coupon coupon) {
		Session session = factory.getCurrentSession();
		String hql = "Update Coupon Set couponName =:cName,"
				+ "couponContext =:cContext,"
				+ "couponCode =:cCode,"
				+ "couponStartTime =:cStartTime,"
				+ "couponEndTime =:cEndTime,"
				+ "couponStatus =:cStatus  "
				+ "Where couponPkId =:cId";			
		session.createQuery(hql)
			.setParameter("cName", coupon.getCouponName())
			.setParameter("cContext", coupon.getCouponContext())
			.setParameter("cCode", coupon.getCouponCode())
			.setParameter("cStartTime", coupon.getCouponStartTime())
			.setParameter("cEndTime", coupon.getCouponEndTime())
			.setParameter("cStatus", coupon.getCouponStatus())
			.setParameter("cId", coupon.getCouponPkId())
			.executeUpdate();
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Coupon> getAllCouponByName(String keyName) {
		String hql = "From Coupon where couponName like :cName";
		Session session = factory.getCurrentSession();
		List<Coupon> list = session.createQuery(hql)
			.setParameter("cName", "%"+keyName+"%")
			.getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Coupon> getAllCouponByStatus(String couponStatus) {
		String hql = "From Coupon where couponStatus like :cStatus";
		Session session = factory.getCurrentSession();
		List<Coupon> list = session.createQuery(hql)
				.setParameter("cStatus", couponStatus)
				.getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Appointment> getAllAppointmentByMemberArrive(String memberArrive, int clinicPkId) {
		String hql = "From Appointment where clinicPkId like :cId and Arrive like :mArrive";
		Session session = factory.getCurrentSession();
		List<Appointment> list = session.createQuery(hql)
				.setParameter("cId", clinicPkId)
				.setParameter("mArrive", memberArrive)
				.getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Appointment> getAllAppointmentByMemberAccount(String memberAccount, int clinicPkId) {
		Session session = factory.getCurrentSession();
		List<Appointment> list = null;
		if(memberAccount.equals("True")) {
		String hql = "From Appointment where clinicPkId like :cId and memberPkId is not null";
		list = session.createQuery(hql)
				.setParameter("cId", clinicPkId)
				.getResultList();
		}else {
		String hql = "From Appointment where clinicPkId like :cId and memberPkId is null";
		list = session.createQuery(hql)
				.setParameter("cId", clinicPkId)
				.getResultList();	
		}
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Appointment> getAllAppointmentByMemberAccountAndMemberArrive(String memberArrive, String memberAccount,
			int clinicPkId) {
		Session session = factory.getCurrentSession();
		List<Appointment> list = null;
		if(memberAccount.equals("True")) {
		String hql = "From Appointment where clinicPkId like :cId and Arrive like :mArrive and memberPkId is not null";
		list = session.createQuery(hql)
				.setParameter("cId", clinicPkId)
				.setParameter("mArrive", memberArrive)
				.getResultList();
		}else {
		String hql = "From Appointment where clinicPkId like :cId and memberArrive like :mArrive and memberPkId is null";
		list = session.createQuery(hql)
				.setParameter("cId", clinicPkId)
				.setParameter("mArrive", memberArrive)
				.getResultList();
		}
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Appointment> getMemberAppointmentFromIdAndName(int memberPkId, String keyName) {
		Session session = factory.getCurrentSession();
		String hql = "From Clinic Where clinicName like :cName";
		List<Clinic> clinicList=session.createQuery(hql)
				.setParameter("cName", "%"+keyName+"%")
				.getResultList();
		
		ArrayList<Integer> clinicId = new ArrayList<Integer>();
		for(int i=0; i<clinicList.size(); i++) {
			clinicId.add(clinicList.get(i).getClinicPkId());
		}

		List<Appointment> list = new LinkedList<Appointment>();
		
		for (int i=0; i<clinicId.size(); i++) {
			String hql1 = "From Appointment where memberPkId like :mId and clinicPkId like :cId";
			List<Appointment>appointmentList = session.createQuery(hql1)
					.setParameter("cId", clinicId.get(i))
					.setParameter("mId", memberPkId)
					.getResultList();
			for (int j = 0; j < appointmentList.size(); j++) {
				list.add(appointmentList.get(j));
			}
		}
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Appointment> getMemberAppointmentFromIdAndArrive(int memberPkId, String arrive) {
		Session session = factory.getCurrentSession();
		String hql = "From Appointment Where memberPkId like :mId and arrive like :arrive";
		List<Appointment> list=session.createQuery(hql)
				.setParameter("mId", memberPkId)
				.setParameter("arrive", arrive)
				.getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Orders> getMemberOrderFromIdAndOrderNo(int memberPkId, String keyName) {
		Session session = factory.getCurrentSession();
		String hql = "From Orders Where memberPkId like :mId and orderNo like :oNo";
		List<Orders> list=session.createQuery(hql)
				.setParameter("mId", memberPkId)
				.setParameter("oNo", "%"+keyName+"%")
				.getResultList();
		return list;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Orders> getMemberOrderFromIdAndOrderStatus(int memberPkId, String orderStatus) {
		Session session = factory.getCurrentSession();
		String hql = "From Orders Where memberPkId like :mId and orderStatus like :oStatus";
		List<Orders> list=session.createQuery(hql)
				.setParameter("mId", memberPkId)
				.setParameter("oStatus", orderStatus)
				.getResultList();
		return list;
	}










}
