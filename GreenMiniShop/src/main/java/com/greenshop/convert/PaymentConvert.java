package com.greenshop.convert;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.greenshop.dto.OrderItemDTO;
import com.greenshop.entity.OrderItem;

@Component
public class PaymentConvert {
	@Autowired
	private ModelMapper modelMapper;

	public OrderItemDTO convertDTO(OrderItem OrderItemEntity) {
		return modelMapper.map(OrderItemEntity, OrderItemDTO.class);
	}

	public OrderItem convertEntity(OrderItemDTO OrderItemDTO) {
		return modelMapper.map(OrderItemDTO, OrderItem.class);
	}
}
