package com.mokhovav.blog.database;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.PropertySource;
import org.springframework.stereotype.Component;

@Component
@PropertySource("classpath:application.properties")
public class HibernateConfig {

    private static SessionFactory sessionFactory;

    @Value("${database.name}")
    private String dataBase;

    private HibernateConfig() {
    }

    @Bean
    public SessionFactory getSessionFactory() throws Exception {
        try {
            if (sessionFactory == null){
                Configuration configuration = new Configuration();
                configuration.configure(dataBase);
                configuration.addAnnotatedClass(Post.class);
                sessionFactory = configuration.buildSessionFactory();
            }
        }catch(Exception e){
            System.out.println("Error: "+ e.getMessage());
        }
        return sessionFactory;
    }

}
