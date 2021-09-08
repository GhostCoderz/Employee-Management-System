package com.ghostcoderz.ems.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.ghostcoderz.ems.entity.Salary;

public interface SalRepo extends JpaRepository<Salary, Integer>  {

}
