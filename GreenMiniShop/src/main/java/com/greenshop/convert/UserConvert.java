package com.greenshop.convert;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.greenshop.dto.UserDTO;
import com.greenshop.entity.Users;

@Component
public class UserConvert {
	 @Autowired
	    private ModelMapper modelMapper;

	    public UserDTO toDTO(Users userEntity) {
	        return modelMapper.map(userEntity, UserDTO.class);
	    }

	    public Users toEntity(UserDTO userDTO) {
	        return modelMapper.map(userDTO, Users.class);
	    }
}
