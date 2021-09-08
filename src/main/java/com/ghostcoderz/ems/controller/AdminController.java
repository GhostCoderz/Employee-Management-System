package com.ghostcoderz.ems.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller()
@RequestMapping("/admin")
public class AdminController {

	@RequestMapping("")
    public String home() {
		System.out.println("Admin home is called");
        return MainController.jspPath+"index.jsp";
    }

}
