package com.greenshop.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import com.greenshop.dto.ImageDTO;
import com.greenshop.service.ImageService;

@RestController
public class ImageController {

	@Autowired
	private ImageService imgServ;
	
	@GetMapping("/getImg")
	public List<ImageDTO> get(){
		return imgServ.findAll();
	}
}
