package com.m2i.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Table;

@Entity
@Table (name="categorie")
public class Categorie {

	@Id
	@GeneratedValue (strategy=GenerationType.IDENTITY)
	@JoinColumn
	private int id;
	
	@Column
	private String type;
	
	public Categorie() {
		
	}

	public Categorie(int id, String type) {
		super();
		this.id = id;
		this.type = type;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	
}
