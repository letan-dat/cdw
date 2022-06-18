package com.greenshop.dto;


public class CategoryDTO {
	private Long id;
	private String name;
	private ImageDTO image_id;
	
	public CategoryDTO() {
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public ImageDTO getImage_id() {
		return image_id;
	}

	public void setImage_id(ImageDTO image_id) {
		this.image_id = image_id;
	}

	
}
