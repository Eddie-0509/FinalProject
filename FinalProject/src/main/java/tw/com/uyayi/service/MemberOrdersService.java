package tw.com.uyayi.service;
import java.util.List;


import tw.com.uyayi.model.Orders;

public interface MemberOrdersService {

	
	public List<Orders> getAllOrders(int id);
	
}
