package com.greenshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.greenshop.entity.OrderItem;

@Repository
public interface PaymentRepository extends JpaRepository<OrderItem, Long> {
	public OrderItem findOneByID(Long id);
}

