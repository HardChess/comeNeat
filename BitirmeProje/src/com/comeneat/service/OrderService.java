package com.comeneat.service;

import java.util.List;

import com.comeneat.model.Advert;
import com.comeneat.model.Orders;

public interface OrderService {

	List<Orders> getUserOrders(String idUser);

	void setNewOrder(int idAdvert, Orders theOrder, String idUser, String foodName, String orderOwner, String advertOwner);

	Orders getOrderById(int idOrder);

}
