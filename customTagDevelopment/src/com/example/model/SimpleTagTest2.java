package com.example.model;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SimpleTagTest2 extends SimpleTagSupport {
    
    public void doTag() throws JspException, IOException {
        getJspBody().invoke(null);
    }
}
