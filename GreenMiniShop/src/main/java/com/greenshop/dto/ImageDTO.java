package com.greenshop.dto;

public class ImageDTO {
	private Long id;
	private String image;
	
	public ImageDTO() {
		// TODO Auto-generated constructor stub
	}
	
	public ImageDTO(Long id, String image) {
		super();
		this.id = id;
		this.image = image;
	}

	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
	

}
