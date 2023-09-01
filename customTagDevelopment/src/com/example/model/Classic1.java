package com.example.model;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class Classic1 extends TagSupport{
    
    @Override
    public int doStartTag() throws JspException {    
        JspWriter out = pageContext.getOut();

        try {
            out.println("classic tag output");
        } catch (IOException ex) {
            throw new JspException("IOException- " + ex.toString());
        }

        return SKIP_BODY;
    }
}
