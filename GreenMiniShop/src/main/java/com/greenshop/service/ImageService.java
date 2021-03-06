package com.greenshop.service;

import java.util.List;

import com.greenshop.dto.ImageDTO;

public interface ImageService {
	public List<ImageDTO> findAll();
	public ImageDTO save(ImageDTO imgDTO);
	public ImageDTO edit(ImageDTO imgDTO);
	public void delete(long id);
	public ImageDTO findById(long id);

}
