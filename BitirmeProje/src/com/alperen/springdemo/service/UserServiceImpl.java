package com.alperen.springdemo.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.alperen.springdemo.dao.UserDAO;
import com.alperen.springdemo.entity.User;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserDAO userDAO;

	@Override
	@Transactional
	public void saveUser(User theUser) {

		userDAO.saveUser(theUser);
		
	}
	

}
