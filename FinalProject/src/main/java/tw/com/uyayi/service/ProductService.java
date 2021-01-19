package tw.com.uyayi.service;

import java.util.List;

import tw.com.uyayi.model.Coupon;
import tw.com.uyayi.model.Products;

public interface ProductService {
	
	List<Products> getAllProducts();
	
	List<Products> getProductsByCategory(String productCategoty);
	
	List<Coupon> checkCoupon(String couponCode);
}
