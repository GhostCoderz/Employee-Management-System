package com.ghostcoderz.ems.dao;

import com.ghostcoderz.ems.entity.Address;

public class AddressDAO 
{
	
	public boolean insertAddress(Address addr)
	{
		
		try
		{
			return true;
		}
		catch (Exception ex) 
		{
			return false;
		}
		
	}

}
