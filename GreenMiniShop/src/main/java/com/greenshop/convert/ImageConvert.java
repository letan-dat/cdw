package com.greenshop.convert;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.greenshop.dto.ImageDTO;
import com.greenshop.entity.Image;

@Component
public class ImageConvert {
	@Autowired
	private ModelMapper modelMapper;

	public ImageDTO convertDTO(Image imageEntity) {
		return modelMapper.map(imageEntity, ImageDTO.class);
	}

	public Image convertEntity(ImageDTO imageDTO) {
		return modelMapper.map(imageDTO, Image.class);
	}
}
