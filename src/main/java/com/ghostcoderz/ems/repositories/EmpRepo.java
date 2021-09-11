package com.ghostcoderz.ems.repositories;

import com.ghostcoderz.ems.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmpRepo extends JpaRepository<Employee, Integer> {
	
	public Employee findByEmail(String email);

}
