package com.example.taglib;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SelectTagHandlerBS extends SimpleTagSupport {
    private List<String> optionsList;
    private String name;
    private String size;

    public void doTag() throws JspException, IOException {
        PageContext pageContext = (PageContext) getJspContext();
        JspWriter out = getJspContext().getOut();

        out.print("<select ");
        out.print(String.format(ATTR_TEMPLATE, "name", this.name));
        out.print(String.format(ATTR_TEMPLATE, "size", this.size));
        out.print(">");

        for (Object option : this.optionsList) {
            String optionTag = String.format(OPTION_TEMPLATE, option.toString());
            out.println(optionTag);
        }

        out.print("</select>");
    }

    public void setOptionsList(List<String> optionsList) {
        this.optionsList = optionsList;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setSize(String size) {
        this.size = size;
    }

    private static final String ATTR_TEMPLATE = "%s='%s'";
    private static final String OPTION_TEMPLATE
    = " <option value='%1$s'> %1$s </option>";    
}
