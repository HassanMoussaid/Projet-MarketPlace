package com.m2i.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.m2i.dao.UserDAO;
import com.m2i.models.User;

@Service
public class ImplUserService implements UserService{
	
	@Autowired
	private UserDAO userD;

	@Override
	public User getUser(String email, String mdp) {
		return userD.getUser(email, mdp);
	}

}
