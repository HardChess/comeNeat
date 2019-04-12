package com.comeneat.dao.impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.comeneat.dao.AdvertDAO;
import com.comeneat.model.Advert;

@Repository("advertDAO")
public class AdvertDAOImpl implements AdvertDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public List<Advert> getAdvertsBuy(String idUser) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Advert> theQuery = currentSession.createQuery("from Advert where idUser!=:userID and portion>0", Advert.class);
		
		theQuery.setParameter("userID", Integer.parseInt(idUser));
		
		List<Advert> adverts = theQuery.getResultList();
		
		return adverts;
	}
	@Override
	public List<Advert> getAdvertsSell(String idUser) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Advert> theQuery = currentSession.createQuery("from Advert where idUser=:userID and portion>0", Advert.class);
		
		theQuery.setParameter("userID", Integer.parseInt(idUser));
		
		List<Advert> adverts = theQuery.getResultList();
		
		return adverts;
	}
	@Override
	public void saveAdvert(Advert advert) {
		//get current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		//save the advert .. 
		currentSession.save(advert);
	}
}
