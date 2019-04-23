package com.comeneat.service;

import java.util.List;

import com.comeneat.model.User;

public interface UserService {
	public abstract User validateUserCredential(String email,	String password);
	public abstract boolean registerUser(User user);
	public abstract User getUserById(int idUser);

}