package com.greenshop.dto;

import lombok.Data;

public class OrderDTO {
	private Long id;
	private UserDTO user_id;
	private Data ordered_date;
	private Data received_date;
	private StatusDTO status_id;
	private double total_price;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public UserDTO getUser_id() {
		return user_id;
	}

	public void setUser_id(UserDTO user_id) {
		this.user_id = user_id;
	}

	public Data getOrdered_date() {
		return ordered_date;
	}

	public void setOrdered_date(Data ordered_date) {
		this.ordered_date = ordered_date;
	}

	public Data getReceived_date() {
		return received_date;
	}

	public void setReceived_date(Data received_date) {
		this.received_date = received_date;
	}

	public StatusDTO getStatus_id() {
		return status_id;
	}

	public void setStatus_id(StatusDTO status_id) {
		this.status_id = status_id;
	}

	public double getTotal_price() {
		return total_price;
	}

	public void setTotal_price(double total_price) {
		this.total_price = total_price;
	}
	
	
	
}
