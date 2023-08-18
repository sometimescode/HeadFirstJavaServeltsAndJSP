package com.example.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CheckCookie extends HttpServlet {
    
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        
        Cookie cookies[] = request.getCookies();
        String username = "";
        
        for(int i = 0; i < cookies.length; i++) {
            if(cookies[i].getName().equals("username")) {
                username = cookies[i].getValue();
                break;
            }
        }

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        if(username.length() > 0) {
            out.println("Welcome back, " + username + "!");
        } else {
            out.println("Welcome!");
        }

    }
}
