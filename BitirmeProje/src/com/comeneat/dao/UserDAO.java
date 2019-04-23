package com.comeneat.dao;

import java.util.List;

import com.comeneat.model.User;

public interface UserDAO {
	public abstract boolean saveUser(User user);
	public User getUserDetailsByEmailAndPassword(String email,String password);
	public User getUserById(int idUser);
	public abstract void updateUser(int theId, User user);
	
}
