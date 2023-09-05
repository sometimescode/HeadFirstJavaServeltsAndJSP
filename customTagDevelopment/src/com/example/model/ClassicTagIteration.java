package com.example.model;

import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class ClassicTagIteration extends TagSupport {
    private JspWriter out;
    private String [] movies = {"Spiderman", "Saved!", "Amelie"};
    private int counter = 0;

    @Override
    public int doStartTag() {
        out = pageContext.getOut();
        pageContext.setAttribute("movie", movies[counter]);
        counter++;

        return EVAL_BODY_INCLUDE;
    }

    @Override
    public int doAfterBody() {
        if(counter < movies.length) {
            pageContext.setAttribute("movie", movies[counter]);
            counter++;
            return EVAL_BODY_AGAIN;
        }
        
        return SKIP_BODY;
    }
}
