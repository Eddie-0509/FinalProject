package tw.com.uyayi.service.impl;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.AdminDao;
import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Coupon;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.Orders;
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
	public List<Products> getAllProductsByStatus(String h_Status) {
		return adminDao.getAllProductsByStatus(h_Status);
	}
	@Override
	public List<Products> getAllProductsByCategoryAndStatus(String h_productCategory, String h_Status) {
		return adminDao.getAllProductsByCategoryAndStatus(h_productCategory,h_Status);
	}
	
	@Override
	public List<Products> getAllProductsByName(String keyName) {
		return adminDao.getAllProductsByName(keyName);
	}
	@Override
	public List<String> getProdcutName(String keyName) {
		return adminDao.getProductName(keyName);
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
	@Override
	public void updateMemberStatus(int memberPkId,String string) {
		adminDao.updateMemberStatus(memberPkId ,string);
	}
	@Override
	public List<Appointment> getMemberAppointmentFromId(int memberPkId) {
		return adminDao.getMemberAppointmentFromId(memberPkId);
	}
	@Override
	public List<Orders> getMemberOrderFromId(int memberPkId) {
		return adminDao.getMemberOrderFromId(memberPkId);
	}
	@Override
	public List<Member> getAllMemberByStatus(String h_memberStatus) {
		return adminDao.getAllMemberByStatus(h_memberStatus);
	}
	@Override
	public List<Member> getAllMemberByName(String keyName) {
		return adminDao.getAllMemberByName(keyName);
	}
	@Override
	public Member getMemberById(int memberPkId) {
		return adminDao.getMemberById(memberPkId);
	}
	@Override
	public List<Coupon> getAllCoupon() {
		return adminDao.getAllCoupon();
	}
	@Override
	public void insertCoupon(Coupon coupon) {
		adminDao.insertCoupon(coupon);
	}
	@Override
	public void updateCoupon(Coupon coupon) {
		adminDao.updateCoupon(coupon);
		
	}




	

	
}
