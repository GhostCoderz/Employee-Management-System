package com.ghostcoderz.ems.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import com.ghostcoderz.ems.entity.User;

public interface UserRepo extends JpaRepository<User, Integer>  {

}
