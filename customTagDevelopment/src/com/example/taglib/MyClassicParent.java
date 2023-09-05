package com.example.taglib;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class MyClassicParent extends TagSupport {
    private String name;

    public int doStartTag() throws JspException {
        // I guess you only have to worry about the try catch block with the IOException if you do a print
        return EVAL_BODY_INCLUDE;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
}
