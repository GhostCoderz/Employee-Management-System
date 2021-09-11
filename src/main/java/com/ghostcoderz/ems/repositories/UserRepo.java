package com.ghostcoderz.ems.repositories;

import com.ghostcoderz.ems.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.stereotype.Repository;

@Repository
@EnableJpaRepositories
public interface UserRepo extends JpaRepository<User, Integer>  {
	

//	@Query("select * from User u where u.id=?1 and u.pass='?2'")
//	User getUser(int id , String pass);

}
