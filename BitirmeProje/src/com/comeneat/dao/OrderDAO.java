package com.comeneat.dao;

import java.util.List;

import com.comeneat.model.Advert;
import com.comeneat.model.Orders;

public interface OrderDAO {

	List<Orders> getUserOrders(String idUser);

	Object setNewOrder(int idAdvert, Orders theOrder, String idUser, String foodName, String orderOwner, String advertOwner, int n);

	Orders getOrderById(int idOrder);

	List<Orders> getAdvertOrders(int idAdvert);

	void setPoint(int selectedPoint, int idOrder);

}
