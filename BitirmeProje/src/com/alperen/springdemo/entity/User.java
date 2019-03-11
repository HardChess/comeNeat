package com.alperen.springdemo.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;


@Entity
@Table(name="user")
public class User {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="idUser")
	private int idUser;
	
	@Column(name="name")
	@Size(min=1, max=20, message="1-20 arasý karakter girin.")
	@NotNull(message="bos olamaz.")
	private String name;

	@Column(name="surname")
	@Size(min=1, max=20, message="1-20 arasý karakter girin.")
	@NotNull(message="bos olamaz.")
	private String surname;
	
	@Column(name="address")
	@Size(min=1, max=100, message="1-100 arasý karakter girin.")
	@NotNull(message="bos olamaz.")
	private String address;
	
	@Column(name="username")
	@Size(min=1, max=45, message="1-45 arasý karakter girin.")
	@NotNull(message="bos olamaz.")
	private String username;
	
	@Column(name="password")
	@Size(min=1, max=45, message="1-45 arasý karakter girin.")
	@NotNull(message="bos olamaz.")
	private String password;
	
	@Column(name="city")
	@NotNull(message="bos olamaz.")
	private String city;

	@Column(name="photo")
	private byte photo;

	@Column(name="avgPoint")
	private double avgPoint;

	@Column(name="locationLat")
	private String locationLat;
	
	@Column(name="locationLang")
	private String locationLang;

	public int getIdUser() {
		return idUser;
	}

	public void setIdUser(int idUser) {
		this.idUser = idUser;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public byte getPhoto() {
		return photo;
	}

	public void setPhoto(byte photo) {
		this.photo = photo;
	}

	public double getAvgPoint() {
		return avgPoint;
	}

	public void setAvgPoint(double avgPoint) {
		this.avgPoint = avgPoint;
	}

	public String getLocationLat() {
		return locationLat;
	}

	public void setLocationLat(String locationLat) {
		this.locationLat = locationLat;
	}

	public String getLocationLang() {
		return locationLang;
	}

	public void setLocationLang(String locationLang) {
		this.locationLang = locationLang;
	}
	
	

}
