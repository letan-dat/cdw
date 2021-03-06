package com.greenshop.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.greenshop.entity.Image;

@Repository
public interface ImageRepository extends JpaRepository<Image, Long>{
	@Query(value = "select i.* from image i where i.id=:id", nativeQuery = true)
	public Image findImgById(@Param("id") Long id);
	public Image findOneById(long id);
}
