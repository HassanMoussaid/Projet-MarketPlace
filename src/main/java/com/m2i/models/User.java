package com.m2i.models;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table (name="user")
public class User {
	
	@Id
	@GeneratedValue (strategy=GenerationType.IDENTITY)
	@Column
	private int id;
	
	@Column
	private String nom;
	
	@Column
	private String prenom;
	
	@Column
	private String tel;
	
	@Column
	private String email;
	
	@Column
	private String mdp;
	
	@Column
	private String photo;
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="idUser")
	private List<Favori> favoris;
	
	@OneToMany(cascade=CascadeType.ALL)
	@JoinColumn(name="idUser")
	private List<ObjetVente> objetVentes;
	
	public User() {
		
	}
	
	public User(String email, String mdp) {
		super();
		this.email = email;
		this.mdp = mdp;
	}

	public User(String nom, String prenom, String tel, String email, String mdp, String photo) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.tel = tel;
		this.email = email;
		this.mdp = mdp;
		this.photo = photo;
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

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMdp() {
		return mdp;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public List<Favori> getFavoris() {
		return favoris;
	}

	public void setFavoris(List<Favori> favoris) {
		this.favoris = favoris;
	}

	public List<ObjetVente> getObjetVentes() {
		return objetVentes;
	}

	public void setObjetVentes(List<ObjetVente> objetVentes) {
		this.objetVentes = objetVentes;
	}

	@Override
	public String toString() {
		return "User [id=" + id + ", nom=" + nom + ", prenom=" + prenom + ", tel=" + tel + ", email=" + email + ", mdp="
				+ mdp + "]";
	}	
	
	
	
}
