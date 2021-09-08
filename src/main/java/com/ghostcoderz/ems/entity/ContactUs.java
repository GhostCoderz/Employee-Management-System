package com.ghostcoderz.ems.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ContactUs
{
	@Id
	private int id;
	private String email;
	private String message;
	
	public ContactUs() {}

	public ContactUs(int id, String email, String message) {
		this.id = id;
		this.email = email;
		this.message = message;
	}

	public ContactUs(String email, String message) {
		this.email = email;
		this.message = message;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

}
