package tw.com.uyayi.service.impl;

import java.sql.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.ProductDao;
import tw.com.uyayi.model.Coupon;
import tw.com.uyayi.model.OrderDetails;
import tw.com.uyayi.model.Orders;
import tw.com.uyayi.model.Products;
import tw.com.uyayi.service.ProductService;

@Transactional
@Service
public class ProductServiceImpl implements ProductService {
	
	ProductDao pDao;
	
	@Autowired
	public void setCustDao(ProductDao pDao) {
		this.pDao = pDao;
	}

	@Override
	public List<Products> getAllProducts() {
		return pDao.getAllProducts();
	}

	@Override
	public List<Products> getProductsByCategory(String productCategoty) {
		return pDao.getProductsByCategory(productCategoty);
	}

	@Override
	public Products getProductsById(int productId) {
		return pDao.getProductsById(productId);
	}
	
	@Override
	public Coupon checkCoupon(String couponCode) {
		return pDao.checkCoupon(couponCode);
	}

	@Override
	public void insertOrder(Orders orders) {
		pDao.insertOrder(orders);	
	}

	@Override
	public void insertOrderDetail(OrderDetails detail) {
		pDao.insertOrderDetail(detail);
	}

	@Override
	public void updateCouponStatus(int couponPkId) {
		pDao.updateCouponStatus(couponPkId);	
	}

	@Override
	public List<Orders> getOrdersByDate(Date date) {
		return pDao.getOrdersByDate(date);
	}

	@Override
	public Coupon getCouponById(int id) {
		return pDao.getCouponById(id);
	}

	@Override
	public void updateOrderStatus(int orderId) {
		pDao.updateOrderStatus(orderId);
	}

	@Override
	public Orders getOrderByOrderNo(String orderNo) {
		return pDao.getOrderByOrderNo(orderNo);	
	}

	@Override
	public List<OrderDetails> getOrderDetailsById(int orderId) {
		return pDao.getOrderDetailsById(orderId);
	}
}
