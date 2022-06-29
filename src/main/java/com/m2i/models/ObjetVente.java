package com.m2i.models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table (name="objetVente")
public class ObjetVente {

	@Id
	@GeneratedValue (strategy=GenerationType.IDENTITY)
	@Column
	private int id;
	
	@Column
	private String nom;
	
	@Column
	private String description;
	
	@Column
	private int prix;
	
	@ManyToOne
	@JoinColumn
	private User idUser;
	
	@OneToMany(mappedBy="id",cascade=CascadeType.ALL)
	private List<Photo> photos;
	
	@ManyToOne
	@JoinColumn
	private Categorie idCategorie;
	
	@Column
	private int prix;
	
	public ObjetVente() {
		
	}

	public ObjetVente(int id, String nom, String description, User idUser, List<Photo> photos, Categorie idCategorie) {
		super();
		this.id = id;
		this.nom = nom;
		this.description = description;
		this.idUser = idUser;
		this.photos = photos;
		this.idCategorie = idCategorie;
	}

	public ObjetVente(String nom, String description, int prix, List<Photo> photos, Categorie idCategorie) {
		super();
		this.nom = nom;
		this.description = description;
		this.prix = prix;
		this.photos = photos;
		this.idCategorie = idCategorie;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public User getIdUser() {
		return idUser;
	}

	public void setIdUser(User idUser) {
		this.idUser = idUser;
	}

	public List<Photo> getPhotos() {
		return photos;
	}

	public void setPhotos(List<Photo> photos) {
		this.photos = photos;
	}

	public Categorie getIdCategorie() {
		return idCategorie;
	}

	public void setIdCategorie(Categorie idCategorie) {
		this.idCategorie = idCategorie;
	}

	public int getPrix() {
		return prix;
	}

	public void setPrix(int prix) {
		this.prix = prix;
	}
	
	
	
}
