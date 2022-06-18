package com.greenshop.service;

import java.util.List;

import com.greenshop.dto.TreeDTO;

public interface TreeService {
	public List<TreeDTO> findAll();
	public List<TreeDTO> findIndex();
	public TreeDTO findById(Long id);
}
