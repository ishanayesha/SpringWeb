package com.example;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.orm.jpa.vendor.HibernateJpaSessionFactoryBean;

@SpringBootApplication
public class SpringWebApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringWebApplication.class, args);
	}
	
	@Bean
	public HibernateJpaSessionFactoryBean sessionFactory() {
	    return new HibernateJpaSessionFactoryBean();
	}	
}
