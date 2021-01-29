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
	public List<Products> getAllProductsByStatus(String h_status) {
		return adminDao.getAllProductsByStatus(h_status);
	}
	@Override
	public List<Products> getAllProductsByCategoryAndStatus(String h_productCategory, String h_status) {
		return adminDao.getAllProductsByCategoryAndStatus(h_productCategory,h_status);
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
	public List<Clinic> getAllClinicByCity(String h_clinicCity) {
		return adminDao.getAllClinicByCity(h_clinicCity);
	}
	@Override
	public List<Clinic> getAllClinicByStatus(String h_status) {
		return adminDao.getAllClinicByStatus(h_status);
	}
	@Override
	public List<Clinic> getAllClinicByCityAndStatus(String h_clinicCity, String h_status) {
		return adminDao.getAllClinicByCityAndStatus( h_clinicCity, h_status);
	}
	@Override
	public List<Clinic> getAllClinicByName(String keyName) {
		return adminDao.getAllClinicByName(keyName);
	}
	@Override
	public Clinic getClinicById(int clinicPkId) {
		return adminDao.getClinicById(clinicPkId);
	}
	@Override
	public List<Appointment> getClinicAppointmentFromId(int clinicPkId) {
		return adminDao.getClinicAppointmentFromId(clinicPkId);
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
	@Override
	public List<Coupon> getAllCouponByName(String keyName) {
		return adminDao.getAllCouponByName(keyName);
	}
	@Override
	public List<Coupon> getAllCouponByStatus(String couponStatus) {
		return adminDao.getAllCouponByStatus(couponStatus);
	}
	@Override
	public List<Appointment> getAllAppointmentByMemberArrive(String memberArrive, int clinicPkId) {
		return adminDao.getAllAppointmentByMemberArrive(memberArrive, clinicPkId);
	}
	@Override
	public List<Appointment> getAllAppointmentByMemberAccount(String memberAccount, int clinicPkId) {
		return adminDao.getAllAppointmentByMemberAccount(memberAccount, clinicPkId);
	}
	@Override
	public List<Appointment> getAllAppointmentByMemberAccountAndMemberArrive(String memberArrive, String memberAccount,
			int clinicPkId) {
		return adminDao.getAllAppointmentByMemberAccountAndMemberArrive(memberArrive, memberAccount,clinicPkId);
	}
	@Override
	public List<Appointment> getMemberAppointmentFromIdAndName(int memberPkId, String keyName) {
		return adminDao.getMemberAppointmentFromIdAndName(memberPkId,keyName);
	}
	@Override
	public List<Appointment> getMemberAppointmentFromIdAndArrive(int memberPkId, String arrive) {
		return adminDao.getMemberAppointmentFromIdAndArrive(memberPkId, arrive);
	}
	@Override
	public List<Orders> getMemberOrderFromIdAndOrderNo(int memberPkId, String keyName) {
		return adminDao.getMemberOrderFromIdAndOrderNo(memberPkId, keyName);
	}
	@Override
	public List<Orders> getMemberOrderFromIdAndOrderStatus(int memberPkId, String orderStatus) {
		return adminDao.getMemberOrderFromIdAndOrderStatus(memberPkId, orderStatus);
	}


	




	

	
}
