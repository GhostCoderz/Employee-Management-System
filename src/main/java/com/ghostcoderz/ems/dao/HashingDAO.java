package com.ghostcoderz.ems.dao;

public class HashingDAO 
{
	
	public String hashPass(String pass)
	{
		String hashedPass="";
		for(Character c:pass.toCharArray())
		{
			String temp=String.valueOf(c.hashCode());
			temp=temp.substring(temp.length()%2);
			hashedPass+=temp;			
		}
		return hashedPass;
	}

}
