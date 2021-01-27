package tw.com.uyayi.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import tw.com.uyayi.dao.MemberOrdersDao;
import tw.com.uyayi.model.Orders;
import tw.com.uyayi.service.MemberOrdersService;

@Transactional
@Service
public class MemberOrdersServiceImpl implements MemberOrdersService {

    @Autowired	
	MemberOrdersDao memberOrdersDao ;
	
	@Override
	public List<Orders> getAllOrders(int id) {
		
		return memberOrdersDao.getAll(id);
	
	}

}
