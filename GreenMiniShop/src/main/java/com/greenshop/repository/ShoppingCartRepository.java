package com.greenshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.greenshop.entity.Shoppingcart;

@Repository
public interface ShoppingCartRepository extends JpaRepository<Shoppingcart, Long> {
	public Shoppingcart findOneByID(long id);
}
