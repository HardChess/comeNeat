package com.comeneat.dao;

import java.util.List;

import com.comeneat.model.Orders;

public interface OrderDAO {

	List<Orders> getUserOrders(String idUser);

}
