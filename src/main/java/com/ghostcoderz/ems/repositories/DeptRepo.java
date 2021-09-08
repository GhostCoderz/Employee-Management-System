package com.ghostcoderz.ems.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ghostcoderz.ems.entity.Department;

public interface DeptRepo extends JpaRepository<Department, Integer>  {

}
