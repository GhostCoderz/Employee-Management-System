package com.ghostcoderz.ems.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User 
{
	
	@Id
	private int id;
	private String pass;
	
	public User() {}

	public User(int id, String pass) {
		this.id = id;
		this.pass = pass;
	}

	public int getId() {
		return id;
	}

	public void setId(int userId) {
		this.id = userId;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

}
