package com.example.web;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class BracketsNStuff extends HttpServlet {
    
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String [] favoriteMusic = {"Zero 7", "Tahiti 80", "BT", "Frou Frou"};
        request.setAttribute("musicList", favoriteMusic);

        ArrayList<String> favoriteFood = new ArrayList<String>();
        favoriteFood.add("chai ice cream");
        favoriteFood.add("fajitas");
        favoriteFood.add("thai pizza");
        favoriteFood.add("anything in dark chocolate");
        request.setAttribute("favoriteFood", favoriteFood);

        Map musicMap = new HashMap<String, String>();
        musicMap.put("Ambient", "Zero 7");
        musicMap.put("Surf", "Tahiti 80");
        musicMap.put("DJ", "BT");
        musicMap.put("Indie", "Travis");
        request.setAttribute("musicMap", musicMap);
        request.setAttribute("Genre", "Ambient");
        String[] musicTypes = {"Ambient", "Surf", "DJ", "Indie"};
        request.setAttribute("MusicType", musicTypes);

        RequestDispatcher view = request.getRequestDispatcher("bracketsTestZone.jsp");
        view.forward(request, response);
    }
}
