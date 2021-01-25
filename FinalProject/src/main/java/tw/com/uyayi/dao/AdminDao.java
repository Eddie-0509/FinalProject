package tw.com.uyayi.dao;

import java.sql.Date;
import java.util.List;

import tw.com.uyayi.model.Appointment;
import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Coupon;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.Orders;
import tw.com.uyayi.model.Products;

public interface AdminDao {
		//取得所有產品資料
		List<Products> getAllProducts();
		//依類別取得產品資料
		List<Products> getAllProductsByCategory(String h_productCategory);
		//依狀態取得產品資料
		List<Products> getAllProductsByStatus(String h_Status);
		//依類別及狀態取得產品資料
		List<Products> getAllProductsByCategoryAndStatus(String h_productCategory, String h_Status);
		//模糊查詢
		List<Products> getAllProductsByName(String keyName);
		//AutoComplete
		List<String> getProductName(String keyName);
		//新增產品
		void insertProduct(Products product);
		//修改產品
		void updateProduct(Products product);
		//取得今天日期
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
		//會員名稱或Mail搜尋會員資料
		List<Member> getAllMemberByName(String keyName);
		//ById取得會員資料
		Member getMemberById(int memberPkId);
		//取得所有診所資料
		List<Clinic> getAllClinic();
		//取得所有折價券資料
		List<Coupon> getAllCoupon();
		//新增折扣資料
		void insertCoupon(Coupon coupon);
		//修改折扣資料
		void updateCoupon(Coupon coupon);

		
}
