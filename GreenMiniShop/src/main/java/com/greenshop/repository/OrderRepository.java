package com.greenshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.greenshop.entity.Order;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {
	public Order findOneByID(Long id);
}

