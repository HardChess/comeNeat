package com.comeneat.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import com.comeneat.dao.OrderDAO;
import com.comeneat.model.Advert;
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

	@Override
	public Object setNewOrder(int idAdvert, Orders theOrder, String idUser, String foodName, String orderOwner,
			String advertOwner, int n) {


		Session currentSession = sessionFactory.getCurrentSession();
		
		//set a new order
		theOrder.setIdUser(Integer.parseInt(idUser));
		theOrder.setIdAdvert(idAdvert);
		theOrder.setPortion(n);
		theOrder.setPoint(-1);
		theOrder.setFoodName(foodName);
		theOrder.setAdvertOwner(advertOwner);
		theOrder.setOrderOwner(orderOwner);
		
		currentSession.save(theOrder);
		
		//update advert portion
		Query<Advert> theQuery = currentSession.createQuery("update from Advert set portion=portion-:n where idAdvert=:idAdvert");
		
		theQuery.setParameter("idAdvert", idAdvert);
		theQuery.setParameter("n", n);
		
		theQuery.executeUpdate();
		
		return null;
	}

	@Override
	public Orders getOrderById(int idOrder) {


		Session currentSession = sessionFactory.getCurrentSession();
		
		Orders theOrder = currentSession.get(Orders.class, idOrder);
		
		return theOrder;
	}

	@Override
	public List<Orders> getAdvertOrders(int idAdvert) {

		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Orders> theQuery = currentSession.createQuery("from Orders where idAdvert=:idAdvert", Orders.class);
		
		theQuery.setParameter("idAdvert", idAdvert);
		
		List<Orders> orders = theQuery.getResultList();
		
		return orders;
	}

	@Override
	public Object setPoint(int selectedPoint, int idOrder) {

		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Orders> theQuery = currentSession.createQuery("update from Orders set point=:selectedPoint where idOrder=:idOrder");
		
		theQuery.setParameter("idOrder", idOrder);
		theQuery.setParameter("selectedPoint", selectedPoint);
		
		theQuery.executeUpdate();
		
		return null;
	}

	
	
}
