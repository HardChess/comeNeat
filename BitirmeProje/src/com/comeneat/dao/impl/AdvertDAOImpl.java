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
		
		Query<Advert> theQuery = currentSession.createQuery("from Advert where idUser!=:userID and portion>0 order by idAdvert desc", Advert.class);
		
		theQuery.setParameter("userID", Integer.parseInt(idUser));
		
		List<Advert> adverts = theQuery.getResultList();
		
		return adverts;
	}
	@Override
	public List<Advert> getAdvertsSell(String idUser) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Advert> theQuery = currentSession.createQuery("from Advert where idUser=:userID and portion>0 order by idAdvert desc", Advert.class);
		
		theQuery.setParameter("userID", Integer.parseInt(idUser));
		
		List<Advert> adverts = theQuery.getResultList();
		
		return adverts;
	}
	
	@Override
	public Advert getAdvertsSell(int theId) {
		//get the current hibernate seesion
		Session currentSession = sessionFactory.getCurrentSession();
		
		//retrieve the object from the databse using the primary key
		Advert theAdvert = currentSession.get(Advert.class, theId);
		
		return theAdvert;
		
	}
	@Override
	public void deleteAdvert(int theId) {
		//get the current hibernate session
		Session currentSession = sessionFactory.getCurrentSession();
		//delete object with primary key
		Query theQuery = 
				currentSession.createQuery("delete from Advert where idAdvert=:theAdvertId");
		
		theQuery.setParameter("theAdvertId", theId);
		
		theQuery.executeUpdate();
		
	}
	@Override
	public void saveAdvert(Advert advert, String idUser, String name) {

		//get current hibernate session
				Session currentSession = sessionFactory.getCurrentSession();
				//save the advert ..
				int id = Integer.parseInt(idUser);
				advert.setIdUser(id);
				advert.setName(name);
					
				currentSession.saveOrUpdate(advert);
		
	}
	@Override
	public Advert getAdvertById(int idAdvert) {

		Session currentSession = sessionFactory.getCurrentSession();
		
		Advert theAdvert = currentSession.get(Advert.class, idAdvert);
		
		return theAdvert;
	}
	@Override
	public List<Advert> getUserAdverts(String idUser) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Advert> theQuery = currentSession.createQuery("from Advert where idUser=:userID", Advert.class);
		
		theQuery.setParameter("userID", Integer.parseInt(idUser));
		
		List<Advert> adverts = theQuery.getResultList();
		
		return adverts;
		
	}
	@Override
	public List<Integer> getAdvertIds(String idUser) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Query<Integer> theQuery = currentSession.createQuery("select a.idAdvert from Advert a where a.idUser=:userID");
		
		theQuery.setParameter("userID", Integer.parseInt(idUser));
		
		List<Integer> adverts = theQuery.getResultList();
		
		return adverts;
		
	}
}
