package com.greenshop.convert;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;

import com.greenshop.dto.RoleDTO;
import com.greenshop.entity.Role;


public class RoleConvert {
	 @Autowired
	    private ModelMapper modelMapper;

	    public RoleDTO toDTO(Role roleEntity) {
	        return modelMapper.map(roleEntity, RoleDTO.class);
	    }

	    public Role toEntity(RoleDTO roleDTO) {
	        return modelMapper.map(roleDTO, Role.class);
	    }
}
