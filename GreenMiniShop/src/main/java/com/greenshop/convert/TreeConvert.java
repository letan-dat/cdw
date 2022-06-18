package com.greenshop.convert;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.greenshop.dto.TreeDTO;
import com.greenshop.entity.Tree;

@Component
public class TreeConvert {
	@Autowired
	private ModelMapper modelMapper;

	public TreeDTO convertDTO(Tree treeDTOEntity) {
		return modelMapper.map(treeDTOEntity, TreeDTO.class);
	}

	public TreeDTO convertEntity(TreeDTO treeDTO) {
		return modelMapper.map(treeDTO, TreeDTO.class);
	}
}
