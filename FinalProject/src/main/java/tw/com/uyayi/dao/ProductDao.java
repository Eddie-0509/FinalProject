package tw.com.uyayi.dao;

import java.sql.Date;
import java.util.List;

import tw.com.uyayi.model.Coupon;
import tw.com.uyayi.model.OrderDetails;
import tw.com.uyayi.model.Orders;
import tw.com.uyayi.model.Products;

public interface ProductDao {
	List<Products> getAllProducts();
	
	List<Products> getProductsByCategory(String productCategoty);

	Products getProductsById(int productId);
	
	Coupon checkCoupon(String couponCode);

	void insertOrder(Orders orders);

	void insertOrderDetail(OrderDetails detail);

	void updateCouponStatus(int couponPkId);

	List<Orders> getOrdersByDate(Date date);

	Coupon getCouponById(int id);

	void updateOrderStatus(int orderId);

	Orders getOrderByOrderNo(String orderNo);

	List<OrderDetails> getOrderDetailsById(int orderId);
}
