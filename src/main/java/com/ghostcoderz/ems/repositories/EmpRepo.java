package com.ghostcoderz.ems.repositories;

import com.ghostcoderz.ems.entity.Employee;
import com.ghostcoderz.ems.entity.Salary;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface EmpRepo extends JpaRepository<Employee, Integer> {
	
//	@Query("update Employee e set e.salary = :salList WHERE e.empId = :empId")
//    public void setCustomerName(@Param("salary") List<Salary> salList, @Param("empId") int empId);

}
