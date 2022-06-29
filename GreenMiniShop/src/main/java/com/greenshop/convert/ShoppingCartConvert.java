package com.greenshop.convert;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.greenshop.dto.ShoppingcartDTO;
import com.greenshop.entity.Shoppingcart;

@Component
public class ShoppingCartConvert {
	@Autowired
	private ModelMapper modelMapper;

	public ShoppingcartDTO convertDTO(Shoppingcart ShoppingCartEntity) {
		return modelMapper.map(ShoppingCartEntity, ShoppingcartDTO.class);
	}

	public Shoppingcart convertEntity(ShoppingcartDTO ShoppingcartDTO) {
		return modelMapper.map(ShoppingcartDTO, Shoppingcart.class);
	}
}
