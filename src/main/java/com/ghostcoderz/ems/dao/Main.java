package com.ghostcoderz.ems.dao;

import com.ghostcoderz.ems.entity.Address;
import com.ghostcoderz.ems.entity.Employee;
import com.ghostcoderz.ems.entity.User;

import java.text.ParseException;
import java.text.SimpleDateFormat;

public class Main 
{

	public static void main(String[] args) throws ParseException 
	{
		
		SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
		
		EmployeeDAO edao=new EmployeeDAO();
		Employee e=null;
		User u=null;
		Address addr=new Address("Lane1", "Nagpur", "Maharashtra", "India", 444503);

		try {
			e = new Employee(10001,"Mr.", "Admin", "Admin", "Male", sdf.parse("01-01-2020"), "admin@email.com", 1234567890, "HR", addr);

		} catch (ParseException ex) {
			ex.printStackTrace();
		}
		boolean result;
		
		result=edao.insertEmployee(e);
		e=edao.getEmployeeByEmail("admin@email.com");
		u=new User(e.getId(),"Admin@123");
		UserDAO udao=new UserDAO();
		udao.insertUser(e.getId());
		if(result==true) 
		System.out.println("Done");
			
		System.out.println(edao.getAllEmployee());
		
	}

}
