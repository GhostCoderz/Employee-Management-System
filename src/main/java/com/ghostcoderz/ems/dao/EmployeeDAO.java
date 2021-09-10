package com.ghostcoderz.ems.dao;

import com.ghostcoderz.ems.entity.Employee;
import com.ghostcoderz.ems.exceptions.EmployeeNotFoundException;
import com.ghostcoderz.ems.repositories.EmpRepo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

public class EmployeeDAO 
{
	
	@Autowired
	private EmpRepo empRepo;
	
	
	public List<Employee> getAllEmployee(){
		return this.empRepo.findAll();
	}
	
	public Employee getEmployeeById(int id)
	{

		Employee e=null;
		
		try
		{
			return e;
		}
		catch (Exception ex) 
		{
			return e;
		}
		
	}
	
	public Employee getEmployeeByEmail(String email)
	{

		Employee e=null;
		
		try
		{
			return this.empRepo.findByEmail(email);
		}
		catch (Exception ex) 
		{
			return e;
		}
		
	}
	
	public boolean insertEmployee(Employee emp) {
			this.empRepo.save(emp);
			return true;
	}
	
	public boolean updateEmployee(Employee e)
	{
		
		try
		{
			return true;
		}
		catch (Exception ex) 
		{
			ex.printStackTrace();
			return false;
		}
		
	}
	
	public boolean deleteEmployee(int id)
	{

		Employee e=null;
		
		try
		{
			if(e==null)
			{
				return false;
			}
			else
			{
				return true;
			}
		}
		catch (Exception ex) 
		{
			return false;
		}
		
	}

}
