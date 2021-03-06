package com.greenshop.service;

import java.util.List;

import com.greenshop.dto.CategoryDTO;

public interface CategoryService {
	public List<CategoryDTO> findAll();
	public CategoryDTO findCategory(String categoryDTO);
	public CategoryDTO findById(Long id);
	public CategoryDTO save(CategoryDTO categoryDTO);
	public CategoryDTO edit(CategoryDTO categoryDTO);
	public void delete(long id);
//	public List<CategoryDTO> findIndex();
}
