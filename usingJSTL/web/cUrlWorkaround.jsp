
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <body>
        <a href='<c:url value="/inputComments.jsp"/>'>URL Rewriting from c:url tag</a>

        <c:set var="last" value="Hidden Cursor" />
        <c:set var="first" value="Crouching Pixels" />

        <br>
        <c:url value="/inputComments.jsp?first=${first}&last=${last}" var="inputURL" />
        <br>
        The URL using value with EL-set-params is: ${inputURL} 
        <br>

        <c:url value="/inputComments.jsp" var="inputURL">
            <c:param name="firstName" value="${first}" />
            <c:param name="lastName" value="${last}" />
        </c:url>

        <br>
        The URL using nested c:params is: ${inputURL} <br>
    </body>
</html>