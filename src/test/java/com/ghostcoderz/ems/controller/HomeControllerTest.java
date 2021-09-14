package com.ghostcoderz.ems.controller;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class HomeControllerTest {

    HomeController homeController=new HomeController();

    @Test
    void home() {
        //given
        String returnValue=homeController.home();
        //when
        String expectedReturn="/WEB-INF/jsp/index.jsp";
        //then
        assertEquals(returnValue, expectedReturn);
    }

    @Test
    void login() {
        //given
        String returnValue=homeController.login();
        //when
        String expectedReturn="/WEB-INF/jsp/login.jsp";
        //then
        assertEquals(returnValue, expectedReturn);
    }

    @Test
    void contactUs() {
        //given
        String returnValue=homeController.contactUs();
        //when
        String expectedReturn="/WEB-INF/jsp/contactUs.jsp";
        //then
        assertEquals(returnValue, expectedReturn);
    }
}