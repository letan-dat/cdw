package com.greenshop.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenshop.convert.CategoryConvert;
import com.greenshop.dto.CategoryDTO;
import com.greenshop.entity.Category;
import com.greenshop.repository.CategoryRepository;
import com.greenshop.service.CategoryService;

@Service
public class CategoryServiceImp implements CategoryService{

	@Autowired
	private CategoryRepository categoryRep;
	
	@Autowired
	private CategoryConvert categoryConv;

	@Override
	public List<CategoryDTO> findAll() {
		List<CategoryDTO> dtoList = new ArrayList<>();
		List<Category> entityList =  categoryRep.findAll();
		for(Category cateEntity: entityList) {
			dtoList.add(this.categoryConv.convertDTO(cateEntity));
		}
		return dtoList;
	}

	@Override
	public CategoryDTO findCategory(String categoryDTO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CategoryDTO findById(Long id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CategoryDTO save(CategoryDTO categoryDTO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public CategoryDTO edit(CategoryDTO categoryDTO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(long id) {
		// TODO Auto-generated method stub
		
	}

}
