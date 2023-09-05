<%@ taglib prefix="formTags" uri="http://example.com/tags/forms" %>

<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>

<%@ taglib prefix="myTags" tagdir="/WEB-INF/tags" %>

<%

    // Will get a NullPointerException when this isn't set so I'm just using JSP scriptlet
    List<String> selectOptions = new ArrayList<String>();
    selectOptions.add("light");
    selectOptions.add("amber");
    selectOptions.add("brown");
    selectOptions.add("dark");

    application.setAttribute("colorList", selectOptions);
%>

<html>
    <head>
        <style>
            #idTest {
                background-color: black;
            }
            .classTest {
                color: white;
            }
        </style>
    </head>
    <body>
        Here's Beer!
        <hr>
        <form method="POST" action="#">
            <p>Select beer characteristics:</p>

            <h5> ORIGONAL
            Color:
            <select name="color" size="1">
                <option value="light">light</option>
                <option value="amber">amber</option>
                <option value="brown">brown</option>
                <option value="dark">dark</option>
            </select>

            <h5> UPDAYDED (my solution)
            Color:
            <formTags:selectMS name="color" size="1"
                optionsList="${applicationScope.colorList}" />
            <br><br>

            <h5> UPDAYDED (book's solution)
            Color:
            <formTags:selectBS name="color" size="1"
                optionsList="${applicationScope.colorList}" />
            <br><br>

            <h5> UPDAYDED (their solution + DYNAMIC attributes (a way to make use of attributes found in the select tag without having to individually create setters in our tag (that makes use of HTML's select tag within it)))
            Color:
            <formTags:selectBSDA name="color" size="2" id="idTest" class="classTest"
                optionsList="${applicationScope.colorList}" />
            <br><br>

            <h5> UPDAYDED (using a Tag File instead (also with Dynamic Attributes))
            Color:
            <myTags:dynamicAttributeTag name="color" size="2" id="idTest" class="classTest"
                optionsList="${applicationScope.colorList}" />
            <br><br>
            
            <input type="SUBMIT">
        </form>
    </body>
</html>