package com.m2i.controleur;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.m2i.models.User;
import com.m2i.service.UserService;

@Controller
public class Controleur {
	
	@Autowired
	public UserService userS;
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
	
	@RequestMapping("/login")
	public String login(Model mo) {
		User user= new User();
		mo.addAttribute("user", user);
		return"login";
	}
	
	@Transactional
	@RequestMapping("/accueilLogin")
	public String accueilLogin(HttpServletRequest request, Model mo, @Valid @ModelAttribute("user") User user) {
		User u = userS.getUser(user.getEmail(), user.getMdp());
		u.toString();
		return"accueil";
	}
	
	@RequestMapping("/inscription")
	public String inscription() {
		return"inscription";
	}
	
	
	@RequestMapping("/mettreEnvente")
	public String mettreEnvente() {
		return"AjouterObjet";
	}
	
	@RequestMapping("/ajouterObjet")
	public String ajouterObjet() {
		
		return"MesObjetEnVente";
	}
	
	@RequestMapping("/accueil")
	public String accueil() {
		
		return"accueil";
	}
	
	@RequestMapping("/favori")
	public String favori() {
		
		return"favori";
	}
	
	@RequestMapping("/ajoutObjet")
	public String ajoutObjet() {
		
		return"AjouterObjet";
	}
	
	@RequestMapping("/infoObjet")
	public String infoObjet() {
		
		return"objetVente";
	}
	
	
}
