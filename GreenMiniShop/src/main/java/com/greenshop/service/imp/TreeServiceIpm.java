package com.greenshop.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.greenshop.convert.TreeConvert;
import com.greenshop.dto.TreeDTO;
import com.greenshop.entity.Tree;
import com.greenshop.repository.TreeRepository;
import com.greenshop.service.TreeService;

@Service
public class TreeServiceIpm implements TreeService {
	@Autowired
	private TreeConvert treeConv;

	@Autowired
	private TreeRepository treeRep;

	@Override
	public List<TreeDTO> findAll() {
		List<TreeDTO> dtoList = new ArrayList<>();
		List<Tree> entityList = treeRep.findAll();
		for (Tree treeEntity : entityList) {
			dtoList.add(this.treeConv.convertDTO(treeEntity));
		}
		return dtoList;
	}

	@Override
	public List<TreeDTO> findIndex() {

		List<TreeDTO> dtoList = new ArrayList<>();
		List<Tree> entityList = treeRep.findAll();
		for (Tree treeEntity : entityList) {
			if (dtoList.size() < 8) {
				dtoList.add(this.treeConv.convertDTO(treeEntity));
			}
		}
		return dtoList;
	}

	@Override
	public TreeDTO findById(Long id) {
		return this.treeConv.convertDTO(this.treeRep.findOneById(id));
	}

}
