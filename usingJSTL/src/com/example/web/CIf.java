package com.example.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CIf extends HttpServlet {
    
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String commentList = "<i>This site rocks.</i> <br> <i>This site is cool.</i> <br> <i>This site is stupid.</i> <br>";
        request.setAttribute("commentList", commentList);

        RequestDispatcher view = request.getRequestDispatcher("comments.jsp");
        view.forward(request, response);
    }

}
