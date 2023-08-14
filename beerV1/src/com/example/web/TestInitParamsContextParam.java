package com.example.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestInitParamsContextParam extends HttpServlet {
    
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        out.println("test init parameters from context<br>");

        ServletContext context = getServletContext();
        java.util.Enumeration e = context.getInitParameterNames();
        while(e.hasMoreElements()) {
            out.println("<br>param name =" + e.nextElement() + "<br>");
        }

        out.println("main email is " + context.getInitParameter("mainEmail"));
        out.println("<br>");
        out.println("admin email is " + context.getInitParameter("adminEmail"));
    }
}
