package com.m2i.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table (name="favori")
public class Favori {

	@Id
	private int id;
	
	@ManyToOne
	@JoinColumn
	private User idUser;
	
	@Column
	private int idObjetVente;
	
	public Favori() {
		
	}

	public Favori(User idUser, int idObjetVente) {
		super();
		this.idUser = idUser;
		this.idObjetVente = idObjetVente;
	}

	public User getIdUser() {
		return idUser;
	}

	public void setIdUser(User idUser) {
		this.idUser = idUser;
	}

	public int getIdObjetVente() {
		return idObjetVente;
	}

	public void setIdObjetVente(int idObjetVente) {
		this.idObjetVente = idObjetVente;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
}
