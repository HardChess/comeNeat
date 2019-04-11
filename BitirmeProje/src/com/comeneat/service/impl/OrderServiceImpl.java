package com.comeneat.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.comeneat.dao.OrderDAO;
import com.comeneat.model.Orders;
import com.comeneat.service.OrderService;

@Service("orderService")
public class OrderServiceImpl implements OrderService {
	
	@Autowired
	private OrderDAO orderDAO;

	@Override
	@Transactional
	public List<Orders> getUserOrders(String idUser) {
		// TODO Auto-generated method stub
		return orderDAO.getUserOrders(idUser);
	}

}
