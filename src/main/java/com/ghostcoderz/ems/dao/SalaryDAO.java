package com.ghostcoderz.ems.dao;

import com.ghostcoderz.ems.entity.Employee;
import com.ghostcoderz.ems.entity.Salary;
import java.util.Iterator;
import java.util.List;

public class SalaryDAO
{
	
	@SuppressWarnings("unchecked")
	public List<Salary> getAllSalary(int empId)
	{
		List<Salary> salList=null;
		
		try
		{
			if(salList.size()==0)
			{
				return null;
			}
			else
			{
				return salList;
			}
		}
		catch (Exception e) 
		{
			return salList;
		}
		
	}
	
	@SuppressWarnings("unchecked")
	public Salary getSalary(int id)
	{

		Salary s=null;
		
		try
		{
			return s;
		}
		catch (Exception e) 
		{
			return s;
		}
		
	}

	public boolean insertSalary(Salary salary)
	{
		
		try
		{
			return true;
		}
		catch (Exception e) 
		{
			return false;
		}
	}
	
	public boolean updateSalary(int salId, String month, int year, double amount)
	{
		
		try
		{
			return true;
		}
		catch (Exception e) 
		{
			return false;
		}
		
	}
	
	public boolean deleteSalary(int salId, int empId)
	{

		Salary s=null;
		Employee e=null;
		List<Salary> salList=null;
		
		try
		{
			salList=e.getSalary();
			System.out.println("Salary List before editing : "+ e.getSalary());
			
			for (Iterator<Salary> iterator = salList.iterator(); iterator.hasNext();) {
			    s= iterator.next();
			    if(s.getId()==salId) {
			        iterator.remove();
			    }
			}
			e.setSalary(salList);
			System.out.println("Salary List after editing : "+ e.getSalary());
			return true;
		}
		catch (Exception ex) 
		{
			ex.printStackTrace();
			return false;
		}
		
	}

}
