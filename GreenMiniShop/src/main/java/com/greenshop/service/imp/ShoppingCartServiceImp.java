package com.greenshop.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenshop.convert.ShoppingCartConvert;
import com.greenshop.dto.ShoppingcartDTO;
import com.greenshop.entity.Shoppingcart;
import com.greenshop.repository.ShoppingCartRepository;
import com.greenshop.service.ShoppingCartService;

@Service
public class ShoppingCartServiceImp implements ShoppingCartService {

	@Autowired
	private ShoppingCartRepository ShoppingCartRepository;

	@Autowired
	private ShoppingCartConvert ShoppingCartConvert;

	@Override
	public void remove(long id) {
		this.ShoppingCartRepository.deleteById(id);
	}

	@Override
	public List<ShoppingcartDTO> findAll() {
		List<ShoppingcartDTO> dtoList = new ArrayList<>();
		List<Shoppingcart> entityList = ShoppingCartRepository.findAll();
		for (Shoppingcart shoppingcart : entityList) {
			dtoList.add(this.ShoppingCartConvert.convertDTO(shoppingcart));
		}
		return dtoList;
	}

	@Override
	public ShoppingcartDTO add(ShoppingcartDTO ShoppingCartDTO) {
		return this.ShoppingCartConvert
				.convertDTO(ShoppingCartRepository.save(this.ShoppingCartConvert.convertEntity(ShoppingCartDTO)));
	}
}