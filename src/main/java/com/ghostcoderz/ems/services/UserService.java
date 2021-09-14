package com.ghostcoderz.ems.services;

import com.ghostcoderz.ems.dao.UserDAO;
import com.ghostcoderz.ems.entity.USER_ROLE;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private UserDAO udao=new UserDAO();

    public boolean authenticateUser(int id, String pass, USER_ROLE role) {
        this.udao.getUser(id, pass, role);
        return true;
    }

}
