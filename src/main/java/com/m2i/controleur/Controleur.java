package com.m2i.controleur;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class Controleur {
	
	
	@RequestMapping("/Inscription")
	public String inscription() {
		
		return"AjouterObjet";
	}
	
	@RequestMapping("/login")
	public String formulaireLogin() {
		
		return"login";
	}
	

}
