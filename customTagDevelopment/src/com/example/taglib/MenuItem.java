package com.example.taglib;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class MenuItem extends TagSupport {
    private String itemValue;

    public int doStartTag() throws JspException {
        return EVAL_BODY_INCLUDE;
    }

    public int doEndTag() throws JspException {
        Menu parent = (Menu) getParent();
        parent.addMenuItem(itemValue);

        return EVAL_PAGE;
    }

    public void setItemValue(String itemValue) {
        this.itemValue = itemValue;
    }
    
}
