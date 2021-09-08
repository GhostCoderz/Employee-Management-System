package com.ghostcoderz.ems.entity;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="salary")
public class Salary 
{
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String month;
	private int year;
	private double amount;
	@ManyToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="empId")
	private Employee employee;
	
	public Salary() {}

	public Salary(int id, String month, int year, double amount, Employee employee) {
		this.id = id;
		this.month = month;
		this.year = year;
		this.amount = amount;
		this.employee = employee;
	}
	
	public Salary(String month, int year, double amount, Employee employee) {
		this.month = month;
		this.year = year;
		this.amount = amount;
		this.employee = employee;
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMonth() {
		return month;
	}

	public void setMonth(String month) {
		this.month = month;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public double getAmount() {
		return amount;
	}

	public void setAmount(double amount) {
		this.amount = amount;
	}

	public Employee getEmployee() {
		return employee;
	}

	public void setEmployee(Employee employee) {
		this.employee = employee;
	}
	
}
