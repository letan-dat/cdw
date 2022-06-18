package com.greenshop.service.imp;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;

import com.greenshop.convert.UserConvert;
import com.greenshop.dto.UserDTO;
import com.greenshop.repository.UserRepository;
import com.greenshop.service.UserService;

public class UserServiceImp implements UserService{
	@Autowired
	private UserRepository userRep;
	@Autowired
	private UserConvert userConv;
	
	
	
	@Override
	public List<UserDTO> findAll() {
		List<UserDTO> dtoList = new ArrayList<>();
		return null;
	}

	@Override
	public UserDTO save(UserDTO user) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(String email) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public UserDTO findEmail(String email) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDTO findByEmail(String userName) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public UserDTO confirmEmail(String confirmationToken) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean checkPass(String password, String email) {
		// TODO Auto-generated method stub
		return false;
	}

}
