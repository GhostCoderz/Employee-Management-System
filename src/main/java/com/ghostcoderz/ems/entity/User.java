package com.ghostcoderz.ems.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User 
{
	
	@Id
	private int id;
	private String pass;
	private USER_ROLE role;
	
	public User() {}

	public User(int id, String pass, USER_ROLE role) {
		this.id = id;
		this.pass = pass;
		this.role=role;
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

	public USER_ROLE getRole() {
		return role;
	}

	public void setRole(USER_ROLE role) {
		this.role = role;
	}

}
