package com.ghostcoderz.ems.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ghostcoderz.ems.entity.Employee;
import com.ghostcoderz.ems.entity.Salary;
import com.ghostcoderz.ems.repositories.EmpRepo;

@Controller
public class MainController {
	
	static String jspPath="/WEB-INF/jsp/";
	@Autowired
	private EmpRepo empRepo;

    @RequestMapping({"/","home"})
    public String home() {
        return jspPath+"index.jsp";
    }
    
    @RequestMapping("/aboutUs")
    public String aboutUs() {
        return "footer.html";
    }
    
    @RequestMapping("/login")
    public String login() {
    	return jspPath+"login.jsp";
    }
    
    @RequestMapping("/add")
    public String add() {
    	Employee emp=new Employee(1, "Mr.", "Ved", "Active", "Male", null, new Date(), "vedasole001@gmail.com", 83909,"DeptName", null, null);
    	empRepo.save(emp);
    	return "Added employee";
    }
    
    @RequestMapping("/update")
    public @ResponseBody Employee updateEmp() {
    	
    	Employee emp=empRepo.findById(1).orElse(null);
    	List<Salary> salList=new ArrayList<Salary>();
    	salList.add(new Salary("Jan", 2021, 20000.56, null));
    	emp.setSalary(salList);
    	System.out.println(emp);
    	return empRepo.save(emp);
    }
    
    @RequestMapping("/get")
    public @ResponseBody Employee getUpdatedEmp() {
    	return empRepo.findById(1).orElse(null);
    }

}
