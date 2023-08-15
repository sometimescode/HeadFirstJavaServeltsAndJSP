package main.java.com.example.web;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import main.java.com.example.model.Dog;

public class MyServletContextListener implements ServletContextListener {

    public void contextDestroyed(ServletContextEvent event) {
        // nothing to do here
    }

    public void contextInitialized(ServletContextEvent event) {
        ServletContext sc = event.getServletContext();
        
        String dogBreed = sc.getInitParameter("breed");

        Dog d = new Dog(dogBreed);

        sc.setAttribute("dog", d);
    }
}