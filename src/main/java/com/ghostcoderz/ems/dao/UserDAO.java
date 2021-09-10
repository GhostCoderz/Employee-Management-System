package com.ghostcoderz.ems.dao;

import org.springframework.beans.factory.annotation.Autowired;
import com.ghostcoderz.ems.entity.User;
import com.ghostcoderz.ems.exceptions.EmployeeNotFoundException;
import com.ghostcoderz.ems.repositories.UserRepo;

public class UserDAO 
{
	
	@Autowired
	private UserRepo userRepo;
	
	public User getUser(int id)
	{

		User user=null;
		
		try
		{
			return userRepo.findById(id).orElseThrow(() -> new EmployeeNotFoundException("Employee with id "+id+" not found"));
		}
		catch (Exception ex) 
		{
			ex.printStackTrace();
			return user;
		}
		
	}
	
	public boolean insertUser(User user){

		HashingDAO hdao=new HashingDAO();
		String hashedPass=hdao.hashPass(user.getPass());
		user.setPass(hashedPass);
		this.userRepo.save(user);
		return true;
		
	}

	public void getUser(int id, String pass) {
		
		HashingDAO hdao=new HashingDAO();
		String hashedPass=hdao.hashPass(pass);
		this.userRepo.getUser(id, hashedPass);
		
	}

}
