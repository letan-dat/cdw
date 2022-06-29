package com.greenshop.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestBody;

import com.greenshop.dto.ShoppingcartDTO;
import com.greenshop.service.ShoppingCartService;

@Controller
public class ShoppingcartController {

	@Autowired
	private ShoppingCartService shoppingcartService;

	@GetMapping("/user/cart")
	public String addToCart(@RequestBody ShoppingcartDTO shoppingCartDTO, Model model) {
		model.addAttribute("id", shoppingcartService.add(shoppingCartDTO));
		return "user/cart";
	}
}
