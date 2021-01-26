package tw.com.uyayi.dao.impl;

import java.sql.Date;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.ProductDao;
import tw.com.uyayi.model.Coupon;
import tw.com.uyayi.model.OrderDetails;
import tw.com.uyayi.model.Orders;
import tw.com.uyayi.model.Products;

@Repository
public class ProductDaoImpl implements ProductDao {
	
	SessionFactory factory;
	
	@Autowired
	public void setFactory(SessionFactory factory) {
		this.factory = factory;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Products> getAllProducts() {
		Session session = factory.getCurrentSession();
		String hql  = "from Products where productStatus = '上架'";
		List<Products> list = new ArrayList<>();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Products> getProductsByCategory(String productCategoty) {
		Session session = factory.getCurrentSession();
		String hql = "from Products product where productStatus = '上架' and product.productCategory = :category";
		List<Products> list = new ArrayList<>();
		list = session.createQuery(hql).setParameter("category", productCategoty).getResultList();
		return list;
	}

	@Override
	public Products getProductsById(int productId) {
		Session session = factory.getCurrentSession();
		Products bean = session.get(Products.class, productId);
		return bean;
	}
	
	@Override
	public Coupon checkCoupon(String couponCode) {
		Session session = factory.getCurrentSession();
		String hql = "from Coupon where couponStatus = 'true' and couponCode = :code";
		Coupon cp = new Coupon();
		cp = (Coupon) session.createQuery(hql).setParameter("code", couponCode).getSingleResult();
		System.out.println("CP = " + cp);
		return cp;
	}

	@Override
	public void insertOrder(Orders orders) {
		Session session = factory.getCurrentSession();
		session.save(orders);
	}

	@Override
	public void insertOrderDetail(OrderDetails detail) {
		Session session = factory.getCurrentSession();
		session.save(detail);	
	}

	@Override
	public void updateCouponStatus(int couponPkId) {		
		Session session = factory.getCurrentSession();
		String sql = "update Coupon set couponStatus = :status where couponPkId = :id";
		session.createSQLQuery(sql).setParameter("status", "false").setParameter("id", couponPkId).executeUpdate();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Orders> getOrdersByDate(Date date) {
		Session session = factory.getCurrentSession();
		String hql = "from Orders where orderDate = :date";
		List<Orders> list = new ArrayList<>();
		list = session.createQuery(hql).setParameter("date", date).getResultList();
		return list;
	}

	@Override
	public Coupon getCouponById(int id) {
		Session session = factory.getCurrentSession();
		Coupon bean = session.get(Coupon.class, id);
		return bean;
	}

	@Override
	public void updateOrderStatus(int orderId) {
		Session session = factory.getCurrentSession();
		String sql = "update Orders set orderStatus = :status where orderPkId = :id";
		session.createSQLQuery(sql).setParameter("status", "已付款").setParameter("id", orderId).executeUpdate();
	}

	@Override
	public Orders getOrderByOrderNo(String orderNo) {
		Session session = factory.getCurrentSession();
		String hql = "from Orders where orderNo = :no";
		Orders bean = (Orders) session.createQuery(hql).setParameter("no", orderNo).getSingleResult();
		return bean;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<OrderDetails> getOrderDetailsById(int orderId) {
		Session session = factory.getCurrentSession();
		String hql = "from OrderDetails where orderPkId = :id";
		List<OrderDetails> list = new ArrayList<>();
		list = session.createQuery(hql).setParameter("id", orderId).getResultList();
		return list;
	}
}
