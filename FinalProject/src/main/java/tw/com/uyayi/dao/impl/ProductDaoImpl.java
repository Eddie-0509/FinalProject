package tw.com.uyayi.dao.impl;

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
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Coupon> checkCoupon(String couponCode) {
		Session session = factory.getCurrentSession();
		String hql = "from Coupon where couponStatus = 'true' and couponCode = :code";
		List<Coupon> list = new ArrayList<>();
		list = session.createQuery(hql).setParameter("code", couponCode).getResultList();
		return list;
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
}
