package com.ghostcoderz.ems.controller;

import com.ghostcoderz.ems.entity.Employee;
import com.ghostcoderz.ems.entity.Salary;
import com.ghostcoderz.ems.repositories.EmpRepo;
import com.ghostcoderz.ems.services.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
public class HomeController {
	
	static String jspPath="/WEB-INF/jsp/";
	@Autowired
	private EmpRepo empRepo;

    @RequestMapping({"/","home"})
    public String home() {
        return jspPath+"index.jsp";
    }
    
    @RequestMapping("/login")
    public String login() {
    	return jspPath+"login.jsp";
    }
    
    @RequestMapping(value="/login", method= RequestMethod.POST)
    public String AuthenticateUser(@RequestParam(name = "id") int id, @RequestParam(name="password") String pass,
                                   HttpSession session) {
    	UserService empService=new UserService();
    	boolean valid = empService.authenticateUser(id, pass);
    	if(valid) {
    		session.setAttribute("userId", 1);
    	    return "/dashboard";
        }
    	else {
            return jspPath + "login.jsp";
        }
    }
    
    @RequestMapping(value="/dashboard")
    public String showDashboard() {
        ServletRequestAttributes attr = (ServletRequestAttributes)
                RequestContextHolder.currentRequestAttributes();
        HttpSession session= attr.getRequest().getSession(true); // true == allow create
        int userId;
        if(session.getAttribute("userId")!=null) {
            userId = Integer.parseInt((String) session.getAttribute("userId"));
        }
        else  userId=1;
    	if(userId==1) {
    		return jspPath + "admin.jsp";
    	}else 
    	return jspPath + "employee.jsp";
    }
    
    @RequestMapping("/contactUs")
    public String contactUs() {
    	return jspPath+"contactUs.jsp";
    }
    
    @RequestMapping("/add/{id}")
    public String add(@PathVariable("id") int id) {
    	Employee emp=new Employee(id, "Mr.", "Ved", "Active", "Male", null, new Date(), "vedasole001@gmail.com", 83909 ,"DeptName", null, null);
    	empRepo.save(emp);
    	return jspPath + "index.jsp";
    }
    
    @RequestMapping("/update/{id}")
    public @ResponseBody Employee updateEmp(@PathVariable("id") int id) {
    	
    	Employee emp=empRepo.findById(id).orElse(null);
    	List<Salary> salList=new ArrayList<>();
    	salList.add(new Salary("Jan", 2021, 20000.56, null));
    	emp.setSalary(salList);
    	System.out.println(emp);
    	return empRepo.save(emp);
    }
    
    @RequestMapping("/get/{id}")
    public @ResponseBody Employee getUpdatedEmp(@PathVariable("id") int id) {
    	return empRepo.findById(id).orElse(null);
    }

}
