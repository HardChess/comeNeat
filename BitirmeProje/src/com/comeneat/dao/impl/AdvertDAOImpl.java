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
	public List<Advert> getAdverts() {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Advert> theQuery = currentSession.createQuery("from Advert", Advert.class);
		
		List<Advert> adverts = theQuery.getResultList();
		
		return adverts;
	}

}
