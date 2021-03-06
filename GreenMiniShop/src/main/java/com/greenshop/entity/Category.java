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
import javax.validation.constraints.NotNull;

import lombok.Data;

@Data
@Entity
@Table(name = "category")
public class Category {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private Long id;
	
	@Column(name = "name")
	@NotNull(message = "Tên loại cây không được để trống")
	private String name;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "image_id", nullable = false,
            foreignKey = @ForeignKey(name="fk_image_category"))
	private Image image_id;

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

	public Image getImage_id() {
		return image_id;
	}

	public void setImage_id(Image image_id) {
		this.image_id = image_id;
	}

	
	
}
