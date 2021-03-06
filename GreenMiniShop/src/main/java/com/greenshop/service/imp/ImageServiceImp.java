package com.greenshop.service.imp;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.greenshop.convert.ImageConvert;
import com.greenshop.dto.ImageDTO;
import com.greenshop.entity.Image;
import com.greenshop.repository.ImageRepository;
import com.greenshop.service.ImageService;

@Service
public class ImageServiceImp implements ImageService{

	@Autowired
	private ImageRepository imageRep;
	
	@Autowired
	private ImageConvert imageConv;
	
	@Override
	public ImageDTO findById(long id) {
		Image categoryEntity = this.imageRep.findOneById(id);
        return this.imageConv.convertDTO(categoryEntity);
	}

	@Override
	public List<ImageDTO> findAll() {
		List<ImageDTO> dtoList = new ArrayList<>();
		List<Image> entityList = imageRep.findAll();
		for(Image img : entityList) {
			dtoList.add(this.imageConv.convertDTO(img));
		}
		return dtoList;
	}

	@Override
	public ImageDTO save(ImageDTO imgDTO) {
		return this.imageConv.convertDTO(imageRep.save(this.imageConv.convertEntity(imgDTO)));
	}

	@Override
	public ImageDTO edit(ImageDTO imgDTO) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void delete(long id) {
		this.imageRep.deleteById(id);
	}

	

}
