package com.alperen.springdemo.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.alperen.springdemo.entity.User;

@Repository
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void saveUser(User theUser) {

		Session currentSession = sessionFactory.getCurrentSession();
		
		//User ekleme ve güncelleme
		currentSession.saveOrUpdate(theUser);
		
	}

}
