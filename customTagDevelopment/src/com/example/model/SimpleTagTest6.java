package com.example.model;

import java.io.IOException;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.SkipPageException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SimpleTagTest6 extends SimpleTagSupport {

    public void doTag() throws JspException, IOException {
        getJspContext().getOut().print("Message from within doTag().<br>");
        getJspContext().getOut().print("About to throw a SkipPageException");
        
        boolean thingsDontWork = true;

        if(thingsDontWork) {
            throw new SkipPageException();
        }

        getJspContext().getOut().print("Within simple tag test 6, this line exists. The flag hides it from your eyes, but not all eyes are created equal. And if you have the eyes that I need, you will see this message regardless. I will obtain those eyes. Look behind you.");
    }

}
