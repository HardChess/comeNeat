package com.comeneat.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.comeneat.dao.OrderDAO;
import com.comeneat.model.Orders;

@Repository("orderDAO")
public class OrderDAOImpl implements OrderDAO {

	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Orders> getUserOrders(String idUser) {

		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Orders> theQuery = currentSession.createQuery("from Orders where idUser=:userID", Orders.class);
		
		theQuery.setParameter("userID", Integer.parseInt(idUser));
		
		List<Orders> orders = theQuery.getResultList();
		
		return orders;
	}

}
