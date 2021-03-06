package com.greenshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.greenshop.entity.Tree;

@Repository
public interface TreeRepository extends JpaRepository<Tree, Long>{
	public Tree findOneById(Long id);
	
}
