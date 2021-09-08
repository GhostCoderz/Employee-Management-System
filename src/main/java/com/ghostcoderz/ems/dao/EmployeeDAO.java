package com.ghostcoderz.ems.dao;

import com.ghostcoderz.ems.entity.Employee;

import java.util.List;

public class EmployeeDAO 
{
	
	@SuppressWarnings("unchecked")
	public List<Employee> getAllEmployee()
	{
		List<Employee> empList=null;
		
		try
		{
			return empList;
		}
		catch (Exception e) 
		{
			return null;
		}
		
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
			return e;
		}
		catch (Exception ex) 
		{
			return e;
		}
		
	}
	
	public boolean insertEmployee(Employee e)
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
