package tw.com.uyayi.service.impl;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.AdminDao;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.Products;
import tw.com.uyayi.service.AdminService;


@Transactional
@Service
public class AdminServiceImpl implements AdminService {
	
	@Autowired
	AdminDao adminDao;
	
	
	@Override
	public List<Products> getAllProducts() {
		return adminDao.getAllProducts();
	}
	@Override
	public List<Products> getAllProductsByCategory(String h_productCategory) {
		return adminDao.getAllProductsByCategory(h_productCategory);
	}

	@Override
	public void insertProduct(Products product) {
		adminDao.insertProduct(product);
	}
	

	@Override
	public void updateProduct(Products product) {
		adminDao.updateProduct(product);
		}

	@Override
	public Date getToday() {
		return adminDao.getToday();
	}

	@Override
	public List<Clinic> getAllClinic() {
		return adminDao.getAllClinic();
	}

	@Override
	public List<Member> getAllMember() {
		return adminDao.getAllMember();
	}

	

	
}
