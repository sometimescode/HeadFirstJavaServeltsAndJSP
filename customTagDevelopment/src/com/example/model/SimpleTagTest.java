package com.example.model;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SimpleTagTest extends SimpleTagSupport {
    public void doTag() throws JspException, IOException {
        getJspContext().getOut().print("[SimpleTagSupport] Before body.");
        getJspBody().invoke(null);
        getJspContext().getOut().print("[SimpleTagSupport] After body.");
    }
}