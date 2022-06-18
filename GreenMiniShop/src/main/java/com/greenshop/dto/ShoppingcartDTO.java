package com.greenshop.dto;

public class ShoppingcartDTO {
	private Long id;
	private int quantity;
	private double price;
	private TreeDTO treeId;
	private UserDTO userId;
	private double total_price_item;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public TreeDTO getTreeId() {
		return treeId;
	}

	public void setTreeId(TreeDTO treeId) {
		this.treeId = treeId;
	}

	public UserDTO getUserId() {
		return userId;
	}

	public void setUserId(UserDTO userId) {
		this.userId = userId;
	}

	public double getTotal_price_item() {
		return total_price_item;
	}

	public void setTotal_price_item(double total_price_item) {
		this.total_price_item = total_price_item;
	}
	
	

}
