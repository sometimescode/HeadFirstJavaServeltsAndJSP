package com.example.taglib;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.SimpleTagSupport;

public class SelectTagHandlerMS extends SimpleTagSupport {
    private List<String> optionsList;
    private String name;
    private String size;

    public void doTag() throws JspException, IOException {
        Iterator i = optionsList.iterator();
        StringBuilder sb = new StringBuilder();
        sb.append(String.format("<select name='%s' size='%s'>", name, size));

        while(i.hasNext()) {            
            String option = (String) i.next();
            sb.append(String.format("<option value='%s'>%s</option>", option, option));
        }

        sb.append("</select>");

        getJspContext().getOut().print(sb.toString());
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

    
}
