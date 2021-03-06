package com.greenshop.dto;

public class TreeDTO {
	private Long id;
	private String name;
	private double price;
	private String description;
	private int quantity;
	private CategoryDTO category_id;
	private ImageDTO image_id;
	
	public TreeDTO() {
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
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public CategoryDTO getCategory_id() {
		return category_id;
	}
	public void setCategory_id(CategoryDTO category_id) {
		this.category_id = category_id;
	}

	public ImageDTO getImage_id() {
		return image_id;
	}

	public void setImage_id(ImageDTO image_id) {
		this.image_id = image_id;
	}
	
	

}
