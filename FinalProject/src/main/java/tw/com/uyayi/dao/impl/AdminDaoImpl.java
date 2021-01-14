package tw.com.uyayi.dao.impl;

import java.sql.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.AdminDao;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Member;
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

	@Override
	@SuppressWarnings("unchecked")
	public List<Clinic> getAllClinic() {
		String hql = "From Clinic";
		Session session = factory.getCurrentSession();
		List<Clinic> list = session.createQuery(hql).getResultList();
		return list;
	}
	
	@Override
	@SuppressWarnings("unchecked")
	public List<Member> getAllMember() {
		String hql = "From Member";
		Session session = factory.getCurrentSession();
		List<Member> list = session.createQuery(hql).getResultList();
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

		int n =session.createQuery(hql)
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




}
