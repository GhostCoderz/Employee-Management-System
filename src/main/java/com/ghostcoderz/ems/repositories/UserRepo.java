package com.ghostcoderz.ems.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import com.ghostcoderz.ems.entity.Employee;
import com.ghostcoderz.ems.entity.User;

public interface UserRepo extends JpaRepository<User, Integer>  {
	

	@Query(value = "select * from employee where id=:id and pass=:pass")
	public Employee getUser( @Param("id") int id , @Param("pass") String pass);

}
