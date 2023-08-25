package com.example.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.example.model.Tip;

public class TipOfTheDay extends HttpServlet {
    
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        Tip currentTip = new Tip();
        currentTip.setCurrentTip("<b></b> tags make things bold!");

        request.setAttribute("pageContent", currentTip);

        RequestDispatcher view = request.getRequestDispatcher("tipOfTheDay.jsp");
        view.forward(request, response);

    }
}
