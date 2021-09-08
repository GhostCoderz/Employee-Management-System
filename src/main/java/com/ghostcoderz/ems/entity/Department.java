package com.ghostcoderz.ems.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="department")
public class Department 
{
	
	@Id
	private int id;
	private String deptName;
	
	public Department() {}

	public Department(int id, String deptName) {
		this.id = id;
		this.deptName = deptName;
	}

	public Department(String deptName) {
		this.deptName = deptName;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDeptName() {
		return deptName;
	}

	public void setDeptName(String deptName) {
		this.deptName = deptName;
	}

}
