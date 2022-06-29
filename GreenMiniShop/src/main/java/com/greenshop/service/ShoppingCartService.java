package com.greenshop.service;

import java.util.List;

import com.greenshop.dto.ShoppingcartDTO;

public interface ShoppingCartService  {
	public ShoppingcartDTO add(ShoppingcartDTO ShoppingCartDTO);
	public void remove(long id);
	public List<ShoppingcartDTO> findAll();
}
