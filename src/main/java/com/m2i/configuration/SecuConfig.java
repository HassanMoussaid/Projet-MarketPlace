package com.m2i.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.User.UserBuilder;


@Configuration
@EnableWebSecurity
public class SecuConfig extends WebSecurityConfigurerAdapter {

	protected void configure(AuthenticationManagerBuilder a) throws Exception {
		UserBuilder users =  User.withDefaultPasswordEncoder();
		
		a.inMemoryAuthentication().withUser(users.username("root").password("rootroot").roles("ADMIN)"));
	}
	
}
