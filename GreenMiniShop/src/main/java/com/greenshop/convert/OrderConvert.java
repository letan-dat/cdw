package com.greenshop.convert;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.greenshop.dto.OrderDTO;
import com.greenshop.entity.Order;

@Component
public class OrderConvert {
	@Autowired
	private ModelMapper modelMapper;

	public OrderDTO convertDTO(Order OrderEntity) {
		return modelMapper.map(OrderEntity, OrderDTO.class);
	}

	public Order convertEntity(OrderDTO OrderDTO) {
		return modelMapper.map(OrderDTO, Order.class);
	}
}
