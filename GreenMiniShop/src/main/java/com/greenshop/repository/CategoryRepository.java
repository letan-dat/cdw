package com.greenshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.greenshop.entity.Category;

@Repository
public interface CategoryRepository extends JpaRepository<Category,Long> {
	@Query(value = "select c.* from category c where c.id=:id", nativeQuery = true)
	public Category findCategoryById(@Param("id") Long id);
	public Category findByName(String name);
	public Category findOneById(long id);
}
