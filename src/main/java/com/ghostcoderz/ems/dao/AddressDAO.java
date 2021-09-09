package com.ghostcoderz.ems.dao;

import org.springframework.beans.factory.annotation.Autowired;

import com.ghostcoderz.ems.entity.Address;
import com.ghostcoderz.ems.entity.Employee;
import com.ghostcoderz.ems.repositories.EmpRepo;

public class AddressDAO 
{
	
	@Autowired
	private EmpRepo empRepo;
	
	public boolean insertAddress(int id, Address addr)
	{
		
		try
		{
			Employee emp=empRepo.findById(id).orElse(null);
			emp.setAddr(addr);
			this.empRepo.save(emp);
			return true;
		}
		catch (Exception ex) 
		{
			return false;
		}
		
	}

}
