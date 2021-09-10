package com.ghostcoderz.ems.entity;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Employee 
{
	@Id
//	@GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "employee_seq")
//	@SequenceGenerator(name = "employee_seq", sequenceName = "employee_seq"  , allocationSize = 1)
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	private String salutation;
	private String name;
	private String status;
	private String gender;
	@OneToMany(cascade=CascadeType.ALL,fetch = FetchType.EAGER)
	private List<Salary> salary=new ArrayList<>();
	private Date dob;
	private String email;
	private long empNum;
	private String dept;
	@OneToMany(cascade=CascadeType.ALL)//, fetch = FetchType.EAGER)
	private List<Leave> leave=new ArrayList<>();
	@OneToOne(cascade = CascadeType.ALL)
	private Address addr;
	
	public Employee() {}

	public Employee(String salutation, String name, String status, String gender, List<Salary> salary, Date dob,
			String email, long empNum, String dept, List<Leave> leave, Address addr) {
		this.salutation = salutation;
		this.name = name;
		this.status = status;
		this.gender = gender;
		this.salary = salary;
		this.dob = dob;
		this.email = email;
		this.empNum = empNum;
		this.dept = dept;
		this.leave = leave;
		this.addr = addr;
	}



	public Employee(int id, String salutation, String name, String status, String gender, List<Salary> salary, Date dob,
			String email, long empNum, String dept, List<Leave> leave, Address addr) {
		this.id = id;
		this.salutation = salutation;
		this.name = name;
		this.status = status;
		this.gender = gender;
		this.salary = salary;
		this.dob = dob;
		this.email = email;
		this.empNum = empNum;
		this.dept = dept;
		this.leave = leave;
		this.addr = addr;
	}



	public List<Leave> getLeave() {
		return leave;
	}



	public void setLeave(List<Leave> leave) {
		this.leave = leave;
	}



	public Employee(int id, String salutation, String name, String status, String gender, List<Salary> salary,
			Date dob, String email, long empNum, String dept, Address addr) {
		this.id = id;
		this.salutation = salutation;
		this.name = name;
		this.status = status;
		this.gender = gender;
		this.salary = salary;
		this.dob = dob;
		this.email = email;
		this.empNum = empNum;
		this.dept = dept;
		this.addr = addr;
	}

	public Employee(String salutation, String name, String status, String gender, List<Salary> salary, Date dob,
			String email, long empNum, String dept, Address addr) {
		this.salutation = salutation;
		this.name = name;
		this.status = status;
		this.gender = gender;
		this.salary = salary;
		this.dob = dob;
		this.email = email;
		this.empNum = empNum;
		this.dept = dept;
		this.addr = addr;
	}

	public Employee(int id,String salutation, String name, String status, String gender, Date dob, String email,
			long empNum, String dept, Address addr) {
		this.id=id;
		this.salutation = salutation;
		this.name = name;
		this.status = status;
		this.gender = gender;
		this.dob = dob;
		this.email = email;
		this.empNum = empNum;
		this.dept = dept;
		this.addr = addr;
	}

	public Employee(String salutation, String name, String status, String gender, Date dob, String email,
			long empNum, String dept, Address addr) {
		this.salutation = salutation;
		this.name = name;
		this.status = status;
		this.gender = gender;
		this.dob = dob;
		this.email = email;
		this.empNum = empNum;
		this.dept = dept;
		this.addr = addr;
	}

	public int getId() {
		return id;
	}

	public void setId(int empId) {
		this.id = empId;
	}

	public String getSalutation() {
		return salutation;
	}

	public void setSalutation(String salutation) {
		this.salutation = salutation;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public List<Salary> getSalary() {
		return salary;
	}

	public void setSalary(List<Salary> salary) {
		this.salary = salary;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public long getEmpNum() {
		return empNum;
	}

	public void setEmpNum(long empNum) {
		this.empNum = empNum;
	}

	public String getDept() {
		return dept;
	}

	public void setDept(String dept) {
		this.dept = dept;
	}

	public Address getAddr() {
		return addr;
	}

	public void setAddr(Address addr) {
		this.addr = addr;
	}

	@Override
	public String toString() {
		return "Employee [id=" + id + ", salutation=" + salutation + ", name=" + name + ", status=" + status
				+ ", gender=" + gender + ", salary=" + salary.toString() + ", dob=" + dob + ", email=" + email + ", empNum="
				+ empNum + ", dept=" + dept + ", leave=" + leave + ", addr=" + addr + "]";
	}
	
}
