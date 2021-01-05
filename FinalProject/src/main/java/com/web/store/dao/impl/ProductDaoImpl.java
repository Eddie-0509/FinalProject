package com.web.store.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.web.store.dao.ProductDao;
import com.web.store.exception.ProductNotFoundException;
import com.web.store.model.BookBean;
import com.web.store.model.CompanyBean;
@Repository
public class ProductDaoImpl implements ProductDao {
	
	@Autowired
	SessionFactory factory;
	
	@SuppressWarnings("unchecked")
	@Override
	public List<BookBean> getAllProducts() {
		Session session = factory.getCurrentSession();
		String hql = "From BookBean";
		return session.createQuery(hql).getResultList();
	}

	@Override
	public void updateStock(int productId, int newQuantity) {
			Session session = factory.getCurrentSession();
			String hql = "update BookBean bb set bb.stock= :newQty "
					+ " where bb.bookId = :id";
			session.createQuery(hql).setParameter("newQty", newQuantity)
			.setParameter("id", productId).executeUpdate();

	}

	@SuppressWarnings("unchecked")
	@Override
	public List<String> getAllCategories() {
		Session session = factory.getCurrentSession();
		String hql = "select Distinct bb.category from BookBean bb";
		List<String> list = session.createQuery(hql).getResultList();
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<BookBean> getProductsByCategory(String category) {
		Session session = factory.getCurrentSession();
		String hql = "from BookBean bb where bb.category = :cate";
		List<BookBean> list = session.createQuery(hql).setParameter("cate", category).getResultList();
		return list;
	}

	@Override
	public BookBean getProductById(int productId) {
		Session session = factory.getCurrentSession();
		BookBean bB = session.get(BookBean.class, productId);
		if(bB==null) {
			throw new ProductNotFoundException("產品Not Found 產品編號:"+productId+"找不到",productId);
		}
		return bB;
	}

	@Override
	public void addProduct(BookBean product) {
		Session session = factory.getCurrentSession();
		session.save(product);
	}

	@Override
	public CompanyBean getCompanyById(int companyId) {
		Session session = factory.getCurrentSession();
		CompanyBean cb= session.get(CompanyBean.class, companyId);
		return cb;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<CompanyBean> getCompanyList() {
		Session session = factory.getCurrentSession();
		String hql = "from CompanyBean";
		List<CompanyBean> list = session.createQuery(hql).getResultList();
		return list;
	}

}
