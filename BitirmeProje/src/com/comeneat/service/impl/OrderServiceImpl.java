package com.comeneat.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.comeneat.dao.OrderDAO;
import com.comeneat.model.Advert;
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


	@Override
	@Transactional
	public void setNewOrder(int idAdvert, Orders theOrder, String idUser, String foodName, String orderOwner,
			String advertOwner, int n) {

		orderDAO.setNewOrder(idAdvert, theOrder, idUser, foodName, orderOwner, advertOwner, n);
		
	}


	@Override
	@Transactional
	public Orders getOrderById(int idOrder) {

		
		return orderDAO.getOrderById(idOrder);
	}


	@Override
	@Transactional
	public List<Orders> getAdvertOrders(int idAdvert) {

		return orderDAO.getAdvertOrders(idAdvert);
	}


	@Override
	@Transactional
	public void setPoint(int selectedPoint, int idOrder) {

		orderDAO.setPoint(selectedPoint, idOrder);
		
	}


	@Override
	@Transactional
	public List<Integer> getAdvertPoints(int idAdvert) {

		return orderDAO.getAdvertPoints(idAdvert);
	}

}
