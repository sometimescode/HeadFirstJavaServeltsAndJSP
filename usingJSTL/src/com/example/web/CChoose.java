package com.example.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CChoose extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();

        String userPref = request.getParameter("mostImportantToYouInCar");
        
        if(userPref == null) {
            userPref = "unset";
        }
        
        session.setAttribute("userPref", userPref);

        RequestDispatcher view = request.getRequestDispatcher("carUserPref.jsp");
        view.forward(request, response);
    }
    
}
