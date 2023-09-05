package com.example.taglib;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.SimpleTagSupport;
import javax.servlet.jsp.tagext.DynamicAttributes;

public class SelectTagHandlerBSWithDynamicAttributes extends SimpleTagSupport implements DynamicAttributes {
    private List<String> optionsList;
    private String name;
    private Map<String, Object> tagAttrs = new HashMap<String,Object>();

    public void doTag() throws JspException, IOException {
        PageContext pageContext = (PageContext) getJspContext();
        JspWriter out = getJspContext().getOut();

        out.print("<select ");
        out.print(String.format(ATTR_TEMPLATE, "name", this.name));

        for(String attrName : tagAttrs.keySet()) {
            String attrDefinition = String.format(ATTR_TEMPLATE, attrName, tagAttrs.get(attrName));
            out.print(attrDefinition);
        }

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

    private static final String ATTR_TEMPLATE = "%s='%s'";
    private static final String OPTION_TEMPLATE = " <option value='%1$s'> %1$s </option>";

    public void setDynamicAttribute(String uri, String name, Object value) throws JspException {
        tagAttrs.put(name, value);
    }    
}
