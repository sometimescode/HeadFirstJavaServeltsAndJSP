<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page errorPage="errorPage.jsp" %>

<html>
    <body>
        About to do a risky thing: <br>

        <c:catch>
            
            <% int x = 10/0; %>

        </c:catch>

        If you see this, we survived.

    </body>
</html>