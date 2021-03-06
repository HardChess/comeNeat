package com.comeneat.model;

import java.util.Collection;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "advert")
public class Advert {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idAdvert")
	private int idAdvert;
	
	@Column(name = "foodName")
	private String foodName;
	
	@Column(name = "cost")
	private double cost;
	
	@Column(name = "portion")
	private int portion;
	
	@Column(name = "idUser")
	private int idUser;
	
	@Column(name = "name")
	private String name;
	
//	@OneToMany(mappedBy = "advert")
//	private List<Order> orders;

	public int getIdAdvert() {
		return idAdvert;
	}

	public void setIdAdvert(int idAdvert) {
		this.idAdvert = idAdvert;
	}

	public String getFoodName() {
		return foodName;
	}

	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}

	public double getCost() {
		return cost;
	}

	public void setCost(double cost) {
		this.cost = cost;
	}

	public int getPortion() {
		return portion;
	}

	public void setPortion(int portion) {
		this.portion = portion;
	}

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

//	public User getUser() {
//		return user;
//	}
//
//	public void setUser(User user) {
//		this.user = user;
//	}
//
//	public List<Order> getOrders() {
//		return orders;
//	}
//
//	public void setOrders(List<Order> orders) {
//		this.orders = orders;
//	}


}

