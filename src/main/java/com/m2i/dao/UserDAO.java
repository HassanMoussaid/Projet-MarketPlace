package com.m2i.dao;

import com.m2i.models.User;

public interface UserDAO {

	public User getUser(String email,String mdp);
	
	public void addUser(User u);
	
	public void addObjetVente(User u);

}
