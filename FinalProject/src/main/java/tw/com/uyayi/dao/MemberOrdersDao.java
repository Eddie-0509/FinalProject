package tw.com.uyayi.dao;

import java.util.List;

import tw.com.uyayi.model.Orders;

public interface MemberOrdersDao {

	
	List<Orders> getAll(int id);
	
}
