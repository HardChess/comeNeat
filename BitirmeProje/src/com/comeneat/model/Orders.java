package com.comeneat.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "orders")
public class Orders {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idOrder")
	private int idOrder;

	@Column(name = "point")
	private int point;

	@Column(name = "portion")
	private int portion;
	
	@Column(name = "idUser")
	private int idUser;
	
	@Column(name = "idAdvert")
	private int idAdvert;
	
	@Column(name = "foodName")
	private String foodName;
	
	@Column(name = "advertOwner")
	private String advertOwner;
	
	@Column(name = "orderOwner")
	private String orderOwner;

	public int getIdOrder() {
		return idOrder;
	}

	public void setIdOrder(int idOrder) {
		this.idOrder = idOrder;
	}

	public int getPoint() {
		return point;
	}

	public void setPoint(int point) {
		this.point = point;
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

	public String getAdvertOwner() {
		return advertOwner;
	}

	public void setAdvertOwner(String advertOwner) {
		this.advertOwner = advertOwner;
	}

	public String getOrderOwner() {
		return orderOwner;
	}

	public void setOrderOwner(String orderOwner) {
		this.orderOwner = orderOwner;
	}

//	public User getUser() {
//		return user;
//	}
//
//	public void setUser(User user) {
//		this.user = user;
//	}
//
//	public Advert getAdvert() {
//		return advert;
//	}
//
//	public void setAdvert(Advert advert) {
//		this.advert = advert;
//	}


}
