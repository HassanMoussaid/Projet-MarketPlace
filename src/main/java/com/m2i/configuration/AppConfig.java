package com.m2i.configuration;

import java.beans.PropertyVetoException;

import javax.sql.DataSource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.mchange.v2.c3p0.ComboPooledDataSource;

@Configuration
@EnableWebMvc
@ComponentScan(basePackages = "com.m2i")

public class AppConfig {

	@Bean
	public ViewResolver viewResol() {
		InternalResourceViewResolver irvi = new InternalResourceViewResolver();
		irvi.setPrefix("/WEB-INF/vues/");
		irvi.setSuffix(".jsp");
		
		return irvi;
	}
	
	
	public void addResourceHandlers(ResourceHandlerRegistry rhr) {
		 rhr.addResourceHandler("/resources/**").addResourceLocations("/resources/");
		 // -> href=/resources/css/boostrap.css
	}  
	
	@Bean  
	public DataSource securityDataSource() {
		// create connection pool        
		ComboPooledDataSource securityDataSource  = new ComboPooledDataSource();
		// set the jdbc driver class        
		try {
			securityDataSource.setDriverClass("com.mysql.cj.jdbc.Driver");
			
		} catch (PropertyVetoException exc) {
			throw new RuntimeException(exc);
		}
		// set database connection props        
		securityDataSource.setJdbcUrl("jdbc:mysql://localhost:3306/marketPlace?useSSL=false&amp;serverTimezone=UTC");
		securityDataSource.setUser("root");
		securityDataSource.setPassword("rootroot");
		// set connection pool props        
		securityDataSource.setInitialPoolSize(5);
		securityDataSource.setMinPoolSize(5);
		securityDataSource.setMaxPoolSize(20);
		securityDataSource.setMaxIdleTime(3000);
		return securityDataSource;
	}
}
