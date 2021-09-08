package com.ghostcoderz.ems.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ghostcoderz.ems.entity.Address;

public interface AddrRepo extends JpaRepository<Address, Integer> {

}
