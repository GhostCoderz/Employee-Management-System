package com.ghostcoderz.ems.services;

import com.ghostcoderz.ems.dao.EmployeeDAO;
import com.ghostcoderz.ems.entity.Employee;
import org.springframework.stereotype.Service;

@Service
public class EmployeeService {
	
	private EmployeeDAO edao=new EmployeeDAO();

	public void addEmployee(Employee emp) {
		this.edao.insertEmployee(emp);
	}

}
