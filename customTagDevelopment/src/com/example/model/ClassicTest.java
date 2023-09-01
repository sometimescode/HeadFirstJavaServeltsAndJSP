package com.example.model;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class ClassicTest extends TagSupport {
    JspWriter out;

    public int doStartTag() throws JspException {
        out = pageContext.getOut();
        try {
            out.println("[TagSupport] Before body.");
        } catch (IOException ex) {
            throw new JspException("IOException- " + ex.toString());
        }

        return EVAL_BODY_INCLUDE;
    }

    public int doEndTag() throws JspException {
        try {
            out.println("[TagSupport] After body.");
        } catch (IOException ex) {
            throw new JspException("IOException- " + ex.toString());
        }
        
        return EVAL_PAGE;
    }
}
