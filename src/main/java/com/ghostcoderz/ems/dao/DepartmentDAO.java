package com.ghostcoderz.ems.dao;

import com.ghostcoderz.ems.entity.Department;

public class DepartmentDAO
{
	
	public boolean insertDepartment(Department dept)
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

}
