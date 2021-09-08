package com.ghostcoderz.ems.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller()
@RequestMapping("/employee")
public class EmployeeController {

	@RequestMapping("")
    public String home() {
		System.out.println("Employee home is called");
        return MainController.jspPath+"index.jsp";
    }

}
