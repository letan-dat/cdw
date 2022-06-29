package com.greenshop.service.imp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenshop.convert.OrderConvert;
import com.greenshop.convert.PaymentConvert;
import com.greenshop.dto.OrderDTO;
import com.greenshop.entity.Order;
import com.greenshop.entity.OrderItem;
import com.greenshop.repository.OrderRepository;
import com.greenshop.repository.PaymentRepository;
import com.greenshop.service.PaymentService;

@Service
public class PaymentServiceImp implements PaymentService {

	@Autowired
	private PaymentRepository paymentRepository;

	@Autowired
	private PaymentConvert paymentConvert;

	@Autowired
	private OrderRepository orderRepository;

	@Autowired
	private OrderConvert orderConvert;

	@Override
	public double makePayment(OrderDTO OrderDTO) {
		List<OrderItem> entityList = paymentRepository.findAll();
		double total_price = Order.getTotal_price();
		for (OrderItem orderItem : entityList) {
			total_price += OrderItem.getTotal_price_item();
		}
		return total_price;
	}

	@Override
	public OrderDTO save(OrderDTO OderDTO) {
		return null;
	}
}