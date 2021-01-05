package com.web.store.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.web.store.dao.ProductDao;
import com.web.store.model.BookBean;
import com.web.store.model.CompanyBean;
import com.web.store.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Autowired
	ProductDao productDao;
	
	@Transactional
	public List<BookBean> getAllProducts() {
		return productDao.getAllProducts();
	}

	@Override @Transactional
	public void updateAllStocks() {
	 List<BookBean> products =  getAllProducts();
	 for (BookBean bookBean : products) {
		if(bookBean.getStock()<50) {
			productDao.updateStock(bookBean.getBookId(), bookBean.getStock()+50);
		}
	}
//throw new RuntimeException("測試用例外");
	}

	@Override @Transactional
	public List<String> getAllCategories() {
		return productDao.getAllCategories();
	}

	@Override @Transactional
	public List<BookBean> getProductsByCategory(String category) {
		return productDao.getProductsByCategory(category);
	}

	@Override @Transactional
	public BookBean getProductById(int productId) {
		return productDao.getProductById(productId);
	}

	@Override @Transactional
	public void addProduct(BookBean product) {
		productDao.addProduct(product);
	}

	@Override @Transactional
	public CompanyBean getCompanyById(int companyId) {
		return productDao.getCompanyById(companyId);
	}

	@Override @Transactional
	public List<CompanyBean> getCompanyList() {
		return productDao.getCompanyList();
	}

}
