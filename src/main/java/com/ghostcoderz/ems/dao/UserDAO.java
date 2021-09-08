package com.ghostcoderz.ems.dao;

import com.ghostcoderz.ems.entity.User;

public class UserDAO 
{
	
	public User getUser(int id)
	{

		User user=null;
		
		try
		{
			return user;
		}
		catch (Exception ex) 
		{
			return user;
		}
		
	}
	
	public boolean insertUser(int id)
	{

		HashingDAO hdao=new HashingDAO();
		
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
