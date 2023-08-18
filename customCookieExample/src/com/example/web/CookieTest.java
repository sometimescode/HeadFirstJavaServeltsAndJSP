package com.example.web;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieTest extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        Cookie cookie = new Cookie("username", username);
        cookie.setMaxAge(60 * 30);

        response.setContentType("text/html");
        response.addCookie(cookie);

        RequestDispatcher view = request.getRequestDispatcher("cookieresult.jsp");

        view.forward(request, response);
    }
    
}
