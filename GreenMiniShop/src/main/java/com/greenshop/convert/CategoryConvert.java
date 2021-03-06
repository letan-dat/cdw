package com.greenshop.convert;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.greenshop.dto.CategoryDTO;
import com.greenshop.entity.Category;

@Component
public class CategoryConvert {
	@Autowired
	private ModelMapper modelMapper;

	public CategoryDTO convertDTO(Category categoryEntity) {
		return modelMapper.map(categoryEntity, CategoryDTO.class);
	}

	public Category convertEntity(CategoryDTO categoryDTO) {
		return modelMapper.map(categoryDTO, Category.class);
	}
}
