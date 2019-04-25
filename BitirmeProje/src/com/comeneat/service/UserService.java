package com.comeneat.service;

import java.util.List;

import com.comeneat.model.User;

public interface UserService {
	public abstract User validateUserCredential(String email,	String password);
	public abstract boolean registerUser(User user);
	public abstract User getUserById(int idUser);
	public abstract void updateUser(int theId, User user);
	public abstract void setAvgPoint(double avgPoint, String idUser);
	public abstract double getAvgById(int integer);
	public abstract void setLongitude(float longitt, String theId);
	public abstract void setLatitude(float latit, String idUser);

}