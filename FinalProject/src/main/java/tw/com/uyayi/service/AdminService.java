package tw.com.uyayi.service;

import java.sql.Date;
import java.util.List;

import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Coupon;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.Orders;
import tw.com.uyayi.model.Products;

public interface AdminService {
	//取得所有產品資料
	List<Products> getAllProducts();
	//By類別取得產品資料
	List<Products> getAllProductsByCategory(String h_productCategory);
	//By狀態取得產品資料
	List<Products> getAllProductsByStatus(String h_status);
	//By類別及狀態取得產品資料
	List<Products> getAllProductsByCategoryAndStatus(String h_productCategory, String h_status);
	//商品模糊查詢
	List<Products> getAllProductsByName(String keyName);
	//AutoComplete功能
	List<String> getProdcutName(String keyName);
	//新增產品
	void insertProduct(Products product);
	//修改產品
	void updateProduct(Products product);
	//取得今天日期(SQL.DATE格式)
	Date getToday();
	//取得所有會員資料	
	List<Member> getAllMember();
	//修改會員權限
	void updateMemberStatus(int memberPkId,String string);
	//ID取得會員預約紀錄
	List<Appointment> getMemberAppointmentFromId(int memberPkId);
	//ID取得會員訂單紀錄
	List<Orders> getMemberOrderFromId(int memberPkId);
	//By狀態取得會員資料
	List<Member> getAllMemberByStatus(String h_memberStatus);
	//By會員名稱或Mail搜尋會員資料
	List<Member> getAllMemberByName(String keyName);
	//ByID取得會員資料
	Member getMemberById(int memberPkId);
	//取得所有診所資料
	List<Clinic> getAllClinic();
	//By城市取得所有診所資料
	List<Clinic> getAllClinicByCity(String h_clinicCity);
	//By狀態取得診所資料
	List<Clinic> getAllClinicByStatus(String h_status);
	//By狀態及城市取得診所資料
	List<Clinic> getAllClinicByCityAndStatus(String h_clinicCity, String h_status);
	//診所資料模糊搜尋
	List<Clinic> getAllClinicByName(String keyName);
	//取得所有折扣資料
	List<Coupon> getAllCoupon();
	//By ID取得診所資料
	Clinic getClinicById(int clinicPkId);
	//By ID取得診所預約資料
	List<Appointment> getClinicAppointmentFromId(int clinicPkId);
	//新增折扣資料
	void insertCoupon(Coupon coupon);
	//修改折扣資料
	void updateCoupon(Coupon coupon);
	//折扣資料模糊查詢
	List<Coupon> getAllCouponByName(String keyName);
	//折扣資料依狀態篩選
	List<Coupon> getAllCouponByStatus(String couponStatus);
	//By會員到診狀況取得預約資料
	List<Appointment> getAllAppointmentByMemberArrive(String memberArrive, int clinicPkId);
	//By會員資格取得預約資料
	List<Appointment> getAllAppointmentByMemberAccount(String memberAccount, int clinicPkId);
	//By會員到診狀況及會員資格取得預約資料
	List<Appointment> getAllAppointmentByMemberAccountAndMemberArrive(String memberArrive, String memberAccount,
			int clinicPkId);
	//By會員及診所名稱取得預約資料
	List<Appointment> getMemberAppointmentFromIdAndName(int memberPkId, String keyName);
	//By會員及到診狀態取得預約資料
	List<Appointment> getMemberAppointmentFromIdAndArrive(int memberPkId, String arrive);
	//By會員及訂單編號取得訂單資料
	List<Orders> getMemberOrderFromIdAndOrderNo(int memberPkId, String keyName);
	//By會員及訂單狀況取得訂單資料
	List<Orders> getMemberOrderFromIdAndOrderStatus(int memberPkId, String orderStatus);
	
	
}
