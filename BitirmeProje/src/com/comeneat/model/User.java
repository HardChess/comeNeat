package com.comeneat.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Table(name = "user")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idUser")
	private int id;
	
	@NotEmpty
	@Pattern(regexp="[^0-9]+")
	@Size(min=6,max=40)
	@Column(name = "name")
	private String name;
	
	
	@NotEmpty
	@Size(min=3)
	@Column(name = "username")
	private String username;
	
	@NotEmpty
	@Email
	@Column(name = "email")
	private String email;
	
	@NotEmpty
	@Column(name = "password")
	private String password;
	
	@NotEmpty
	@Column(name = "city")
	private String city;
	
	@Size(min=1)
	@NotNull
	@Column(name = "address")
	private String address;
	
	@NotEmpty
	@Column(name = "gender")
	private String gender;
	
	@NotNull
	@Min(value = 1000000000)
	@Column(name = "phone")
	private Long phone;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public void setPhone(Long phone) {
		this.phone = phone;
	}

	public Long getPhone() {
		return phone;
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

}
