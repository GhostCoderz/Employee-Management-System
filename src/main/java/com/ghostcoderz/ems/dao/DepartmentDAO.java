package com.ghostcoderz.ems.dao;

import org.springframework.beans.factory.annotation.Autowired;
import com.ghostcoderz.ems.entity.Employee;
import com.ghostcoderz.ems.repositories.EmpRepo;

public class DepartmentDAO
{
	
	@Autowired
	private EmpRepo empRepo;
	
	public boolean insertDepartment(int id, String dept)
	{

		try
		{
			Employee emp=empRepo.findById(id).orElse(null);
			emp.setDept(dept);
			this.empRepo.save(emp);
			return true;
		}
		catch (Exception ex) 
		{
			ex.printStackTrace();
			return false;
		}
		
	}

}
