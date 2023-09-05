package com.example.model;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SimpleTagIteration extends SimpleTagSupport {
    
    public void doTag() throws JspException, IOException {
        String [] movies = {"Spiderman", "Saved!", "Amelie"};
        for(int i = 0; i < movies.length; i++) {
            getJspContext().setAttribute("movie", movies[i]);
            getJspBody().invoke(null);
        }
    }
}
