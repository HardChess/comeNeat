package com.comeneat.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.comeneat.dao.UserDAO;
import com.comeneat.model.Advert;
import com.comeneat.model.Orders;
import com.comeneat.model.User;

@Repository("userDAO")
public class UserDAOImpl implements UserDAO {

	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Autowired
	private SessionFactory sessionFactory;
	
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}
	public HibernateTemplate getHibernateTemplate() {
		return hibernateTemplate;
	}
	@Override
	public boolean saveUser(User user) {
		int id = (Integer)hibernateTemplate.save(user);
		if(id>0)
			return true;
		return false;
	}
	@SuppressWarnings("unchecked")
	@Override
	public User getUserDetailsByEmailAndPassword(String email,String password){
		DetachedCriteria detachedCriteria =  DetachedCriteria.forClass(User.class);
		detachedCriteria.add(Restrictions.eq("email", email));
		detachedCriteria.add(Restrictions.eq("password", password));
		List<User> findByCriteria = (List<User>) hibernateTemplate.findByCriteria(detachedCriteria);
		if(findByCriteria !=null && findByCriteria.size()>0)
		return findByCriteria.get(0);
		else
			return null;
	}
	@Override
	public User getUserById(int idUser) {

		Session currentSession = sessionFactory.getCurrentSession();
		
		User theUser = currentSession.get(User.class, idUser);
		
		return theUser;
	}

	@Override
	public void updateUser(int theId, User user) {

		Session currentSession = sessionFactory.getCurrentSession();
		
		user.setIdUser(theId);
			
		currentSession.update(user);
		
	}
	@Override
	public void setAvgPoint(double avgPoint, String idUser) {

		Session currentSession = sessionFactory.getCurrentSession();
		
		int id = Integer.parseInt(idUser);
		
		Query theQuery = currentSession.createQuery("update from User u set u.avgPoint=:avgPoint where idUser=:id");
		
		theQuery.setParameter("avgPoint", avgPoint);
		theQuery.setParameter("id", id);
		
		theQuery.executeUpdate();
		
	}
	@Override
	public double getAvgById(int integer) {
		
		Session currentSession = sessionFactory.getCurrentSession();

		Query theQuery = currentSession.createQuery("select u.avgPoint from User u where u.idUser=:integer");
		
		theQuery.setParameter("integer", integer);
		
		double result = (double) theQuery.getResultList().get(0);
		
		return result;
	}
	@Override
	public void setLongitude(float longitt, String idUser) {
		Session currentSession = sessionFactory.getCurrentSession(); 
		int id = Integer.parseInt(idUser);
		Query theQuery = currentSession.createQuery("update from User u set u.locationLang=:long where idUser=:id");
		theQuery.setParameter("long", longitt);
		theQuery.setParameter("id", id);
		
		theQuery.executeUpdate();
	}
	@Override
	public void setLatitude(float latit, String idUser) {
		Session currentSession = sessionFactory.getCurrentSession(); 
		int id = Integer.parseInt(idUser);
		Query theQuery = currentSession.createQuery("update from User u set u.locationLat=:lat where idUser=:id");
		theQuery.setParameter("lat", latit);
		theQuery.setParameter("id", id);
		
		theQuery.executeUpdate();
		
	}
}
