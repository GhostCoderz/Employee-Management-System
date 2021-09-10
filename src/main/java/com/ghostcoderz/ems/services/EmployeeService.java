package com.ghostcoderz.ems.services;

import org.springframework.stereotype.Service;
import com.ghostcoderz.ems.dao.EmployeeDAO;
import com.ghostcoderz.ems.dao.UserDAO;
import com.ghostcoderz.ems.entity.Employee;

@Service
public class EmployeeService {
	
	private EmployeeDAO edao=new EmployeeDAO();
	private UserDAO udao=new UserDAO();

	public void authenticateUser(int id, String pass) {
		this.udao.getUser(id, pass);
	}
	
	public void addEmployee(Employee emp) {
		this.edao.insertEmployee(emp);
	}

}
