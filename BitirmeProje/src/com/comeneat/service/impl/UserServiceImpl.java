package com.comeneat.service.impl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.comeneat.dao.UserDAO;
import com.comeneat.model.Advert;
import com.comeneat.model.User;
import com.comeneat.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO;
	
	public void setUserDAO(UserDAO userDAO) {
		this.userDAO = userDAO;
	}
	
	public UserDAO getUserDAO() {
		return userDAO;
	}
	
	@Override
	public boolean registerUser(User user) {
		boolean isRegister=false;
		boolean saveUser = getUserDAO().saveUser(user);
		if(saveUser)
			isRegister=true;
		return isRegister;
	}

	@Override
	public User validateUserCredential(String email, String password) {
		User user = getUserDAO().getUserDetailsByEmailAndPassword(email, password);
		return user;
	}

	@Override
	@Transactional
	public User getUserById(int idUser) {

		return userDAO.getUserById(idUser);
	}

	@Override
	@Transactional
	public void updateUser(int theId, User user) {

		userDAO.updateUser(theId, user);
		
	}

	@Override
	@Transactional
	public void setAvgPoint(double avgPoint, String idUser) {

		userDAO.setAvgPoint(avgPoint, idUser);
		
	}

	@Override
	@Transactional
	public double getAvgById(int integer) {

		return userDAO.getAvgById(integer);
	}

	
}
