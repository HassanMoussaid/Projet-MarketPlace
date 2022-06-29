package com.m2i.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.m2i.models.User;

@Repository
public class ImplUserDAO  implements UserDAO{

	@Autowired
	private SessionFactory sf;
	
	@Override
	public User getUser(String email, String mdp) {
		Session s = sf.getCurrentSession();

		List<User> luser = s.createQuery("FROM User WHERE email='"+email+"' AND mdp='"+mdp+"'", User.class).getResultList();
		for(int i=0;i<luser.size();i++) {
			if(luser.get(i).getEmail().equals(email) && luser.get(i).getMdp().equals(mdp)) {
				return luser.get(i);
			}
		}
		return null;
	}

	@Override
	public void addUser(User u) {
		Session s = sf.getCurrentSession();
		s.save(u);
	}

	@Override
	public void addObjetVente(User u) {
		Session s = sf.getCurrentSession();
		s.update(u);
		
	}

}
