package com.greenshop.dto;

public class OrderItemDTO {
	private Long id;
	private TreeDTO tree_id;
	private OrderDTO order_id;
	private int quantity;
	private double total_price_item;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public TreeDTO getTree_id() {
		return tree_id;
	}

	public void setTree_id(TreeDTO tree_id) {
		this.tree_id = tree_id;
	}

	public OrderDTO getOrder_id() {
		return order_id;
	}

	public void setOrder_id(OrderDTO order_id) {
		this.order_id = order_id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getTotal_price_item() {
		return total_price_item;
	}

	public void setTotal_price_item(double total_price_item) {
		this.total_price_item = tree_id.getPrice()*quantity;
	}
	
	
}
