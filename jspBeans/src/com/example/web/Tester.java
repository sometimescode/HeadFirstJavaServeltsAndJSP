package com.example.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.ConcretePerson;
import com.example.model.Dog;

public class Tester extends HttpServlet {
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ConcretePerson p = new ConcretePerson();
        p.setName("Evan");

        Dog dog = new Dog();
        dog.setName("Spike");
        p.setDog(dog);

        request.setAttribute("person", p);
        
        RequestDispatcher view = request.getRequestDispatcher("result.jsp");
        view.forward(request, response);
    }
    
}
