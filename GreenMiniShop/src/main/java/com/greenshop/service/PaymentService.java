package com.greenshop.service;

import com.greenshop.dto.OrderDTO;

public interface PaymentService {
	public double makePayment(OrderDTO OrderDTO);

	public OrderDTO save(OrderDTO OderDTO);
}
