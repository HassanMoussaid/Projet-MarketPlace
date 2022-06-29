package com.m2i.service;

import com.m2i.models.User;

public interface UserService {

	public User getUser(String email,String mdp);
	
	public void addUser(User u);
	
	public void addObjetVente(User u);

}
