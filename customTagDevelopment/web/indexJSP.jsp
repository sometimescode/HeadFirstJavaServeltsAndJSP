<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="myTags" tagdir="/WEB-INF/tags" %>

<html>
    <body>
        INDEX.JSP <br>
        <hr>

        Include Directive <br>
        <%-- subTitle goes in as a REQUEST-SCOPED ATTRIBUTE --%>
        <% request.setAttribute("subTitle", "[jsp scriptlet] We take the sting out of SOAP."); %>
        <%@ include file="header.jsp" %>
        <hr>

        JSP:INCLUDE Standard Action <br>
        <%-- subTitle gores in as a REQUEST PARAMETER --%>
        <jsp:include page="header.jsp">
            <jsp:param name="subTitle" value="[jsp:param] We take the sting out of SOAP." />
        </jsp:include>

        <hr>

        Tag with subTitle tag attribute <br>
        <myTags:headerTagAttribute subTitle="[tag attribute] We take the String out of SOAP." />
        
        <hr>

        Tag without tag attribute but with &lt;jsp:doBody/&gt;<br>
        <myTags:headerDoBody>
            We take the sting out of SOAP. OK, so it's not Jini,<br>
            but we'll help you get through it with the least<br> 
            frustration and hair loss.
        </myTags:headerDoBody>

        <hr>

         Tag with tag directive<br>
        <myTags:headerTagDirective fontColor="#660099">
            We take the sting out of SOAP. OK, so it's not Jini,<br>
            but we'll help you get through it with the least<br> 
            frustration and hair loss.
        </myTags:headerTagDirective>

        Welcome to our site.
    </body>
</html>