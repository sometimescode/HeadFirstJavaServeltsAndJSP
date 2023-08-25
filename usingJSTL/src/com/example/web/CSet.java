package com.example.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.Dog;

public class CSet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Map<String, String> petMap = new HashMap<String, String>();
        
        //will just call this using useBean and set the value using c:set
        Dog dog = new Dog(); 
        dog.setDogName("Preset Name");
        request.setAttribute("dog", dog);
        //will set the value using c:set and passing a null to test if it will be deleted
        request.setAttribute("varToRemove", "Am I still here?");
        //to see the c:set's scope attribute in action,
        //making a varToBeMade set in request
        request.setAttribute("varToBeMade", "I might survive c:remove where optional scope isn't specified, for I am in another plane of existence beyond the default page scope.");

        RequestDispatcher view = request.getRequestDispatcher("remainingC.jsp");
        view.forward(request, response);
    }
    
}
