package com.example.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Loops extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String[] movieList = {"Amelie", "Return of the King", "Mean Girls"};
        request.setAttribute("movieList", movieList);

        //for nested c:ForEach example
        String[] movies1 = {"Matrix Revolutions", "Kill Bill", "Boondock Saints"};
        String[] movies2 = {"Amelie", "Return of the King", "Mean Girls"};
        List<String[]> movieGroupList = new ArrayList<String[]>();
        movieGroupList.add(movies1);
        movieGroupList.add(movies2);
        request.setAttribute("movieGroupList", movieGroupList);

        RequestDispatcher view = request.getRequestDispatcher("loops.jsp");
        view.forward(request, response);
        
    }
    
}
