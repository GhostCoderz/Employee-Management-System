package com.ghostcoderz.ems.services;

import com.ghostcoderz.ems.dao.UserDAO;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private UserDAO udao=new UserDAO();

    public boolean authenticateUser(int id, String pass) {
        this.udao.checkValidUser(id, pass);
        return true;
    }

}
