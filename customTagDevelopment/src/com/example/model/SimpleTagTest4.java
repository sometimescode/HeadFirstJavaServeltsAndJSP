package com.example.model;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SimpleTagTest4 extends SimpleTagSupport{
    
    public void doTag() throws JspException, IOException {
        String[] movies = {"Monsoon Wedding", "Saved!", "Fahrenheit 9/11"};

        for(int i = 0; i < movies.length; i++) {
            System.out.println("looping: " + movies[i]);
            getJspContext().setAttribute("movie", movies[i]);
            getJspBody().invoke(null);
        }
        
    }
}
