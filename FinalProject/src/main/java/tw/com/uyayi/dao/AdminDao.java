package tw.com.uyayi.dao;

import java.sql.Date;
import java.util.List;

import tw.com.uyayi.model.Clinic;
import tw.com.uyayi.model.Member;
import tw.com.uyayi.model.Products;

public interface AdminDao {
		//取得所有產品資料
		List<Products> getAllProducts();
		//新增產品
		void insertProduct(Products product);
		//修改產品
		void updateProduct(Products product);
		//取得今天日期
		Date getToday();
		//取得所有診所資料
		List<Clinic> getAllClinic();
		//取得所有會員資料
		List<Member> getAllMember();
		
}
