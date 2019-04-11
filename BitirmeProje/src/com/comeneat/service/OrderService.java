package com.comeneat.service;

import java.util.List;

import com.comeneat.model.Orders;

public interface OrderService {

	List<Orders> getUserOrders(String idUser);

}
