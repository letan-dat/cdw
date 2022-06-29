package com.greenshop.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "order_item")
public class OrderItem {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "tree_id", nullable = false,
            foreignKey = @ForeignKey(name="fk_tree"))
	private Tree tree_id;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "order_id", nullable = false,
            foreignKey = @ForeignKey(name="fk_order"))
	private Order order_id;
	
	@Column(name = "quantity")
	private int quantity;
	
	@Column(name = "total_price_item")
	private static double total_price_item;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Tree getTree_id() {
		return tree_id;
	}

	public void setTree_id(Tree tree_id) {
		this.tree_id = tree_id;
	}

	public Order getOrder_id() {
		return order_id;
	}

	public void setOrder_id(Order order_id) {
		this.order_id = order_id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public static double getTotal_price_item() {
		return total_price_item;
	}

	public void setTotal_price_item(double total_price_item) {
		this.total_price_item = tree_id.getPrice()*quantity;
	}
}
