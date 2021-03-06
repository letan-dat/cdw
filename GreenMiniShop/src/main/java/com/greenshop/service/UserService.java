package com.greenshop.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import com.greenshop.dto.UserDTO;

public interface UserService {
	List<UserDTO> findAll();

    UserDTO save(UserDTO user);

    void delete(String email);

    UserDTO findEmail(String email);
    
	public UserDTO findByEmail(String userName);

    public UserDTO confirmEmail(String confirmationToken);

    boolean checkPass(String password, String email);

    
}
