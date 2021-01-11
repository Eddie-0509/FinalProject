package tw.com.uyayi.dao.impl;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import tw.com.uyayi.dao.ProductDao;
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
		String hql  = "from Products where productStatus = '上架中'";
		List<Products> list = new ArrayList<>();
		list = session.createQuery(hql).getResultList();
		return list;
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Products> getProductsByCategory(String productCategoty) {
		Session session = factory.getCurrentSession();
		String hql  = "from Products product where productStatus = '上架中' and product.productCategory = :category";
		List<Products> list = new ArrayList<>();
		list = session.createQuery(hql).setParameter("category", productCategoty).getResultList();
		return list;
	}
}
