package com.ghostcoderz.ems.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "address")
public class Address
{
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int addrId;
	private String street;
	private String city;
	private String state;
	private String country;
	private int pincode;
	
	public Address() {}

	public Address(int addrId, String street, String city, String state, String country, int pincode) {
		this.addrId = addrId;
		this.street = street;
		this.city = city;
		this.state = state;
		this.country = country;
		this.pincode = pincode;
	}

	public Address(String street, String city, String state, String country, int pincode) {
		this.street = street;
		this.city = city;
		this.state = state;
		this.country = country;
		this.pincode = pincode;
	}

	public int getAddrId() {
		return addrId;
	}

	public void setAddrId(int addrId) {
		this.addrId = addrId;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String lane1) {
		this.street = lane1;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getPincode() {
		return pincode;
	}

	public void setPincode(int pincode) {
		this.pincode = pincode;
	}
}
