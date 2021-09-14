package com.ghostcoderz.ems;

import com.ghostcoderz.ems.dao.EmployeeDAO;
import com.ghostcoderz.ems.dao.UserDAO;
import com.ghostcoderz.ems.entity.Address;
import com.ghostcoderz.ems.entity.Employee;
import com.ghostcoderz.ems.entity.USER_ROLE;
import com.ghostcoderz.ems.entity.User;

import java.text.ParseException;
import java.text.SimpleDateFormat;


public class Main {

	public void addAdmin() {
		
		SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
		
		EmployeeDAO edao=new EmployeeDAO();
		Employee e;
		User u;
		Address addr=new Address("Lane1", "Nagpur", "Maharashtra", "India", 444503);
		boolean result;

		try {
			e = new Employee(1,"Mr.", "Admin", "Admin", "Male", sdf.parse("01-01-2020"),
							"admin@email.com", 1234567890, "HR", addr);
			result=edao.insertEmployee(e);
			e=edao.getEmployeeByEmail("admin@email.com");
			u=new User(e.getId(),"Admin@123", USER_ROLE.ADMIN);
			UserDAO udao=new UserDAO();
			udao.insertUser(u);
			if(result)
			System.out.println("Done");
		} catch (ParseException ex) {
			ex.printStackTrace();
		}
			
		System.out.println(edao.getAllEmployee());
		
	}

	public static void main(String[] args) {

		new Main().addAdmin();

	}

}
