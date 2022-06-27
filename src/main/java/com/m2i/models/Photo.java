package com.m2i.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table (name="photos")
public class Photo {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@ManyToOne
	@JoinColumn
	private int id;
	
	@Column
	private String photo;
	
	public Photo() {
		
	}
	
	public Photo(String photo) {
		this.photo=photo;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
}
