package tw.com.uyayi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.ProductDao;
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
}
