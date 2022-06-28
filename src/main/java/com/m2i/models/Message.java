package com.m2i.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table (name="messages")
public class Message {

	@Id
	@GeneratedValue (strategy=GenerationType.IDENTITY)
	@Column
	private int id;
	
	@Column
	private String message;
	
	@Column
	private int idUserEnvoi;
	
	@Column
	private int idUserRecoi;
	
	public Message() {
		
	}

	public Message(String message, int idUserEnvoi, int idUserRecoi) {
		super();
		this.message = message;
		this.idUserEnvoi = idUserEnvoi;
		this.idUserRecoi = idUserRecoi;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public int getIdUserEnvoi() {
		return idUserEnvoi;
	}

	public void setIdUserEnvoi(int idUserEnvoi) {
		this.idUserEnvoi = idUserEnvoi;
	}

	public int getIdUserRecoi() {
		return idUserRecoi;
	}

	public void setIdUserRecoi(int idUserRecoi) {
		this.idUserRecoi = idUserRecoi;
	}
	
	
}
