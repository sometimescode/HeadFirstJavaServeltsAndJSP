package main.java.com.example.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import main.java.com.example.model.Dog;

public class ListenerTester extends HttpServlet {
    
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        
        out.println("test context attributes set by listener<br>");
        out.println("<br>");
        
        Dog dog = (Dog) getServletContext().getAttribute("dog");
        
        out.print("Dog's breed is: " + dog.getBreed());
    }
    
}
