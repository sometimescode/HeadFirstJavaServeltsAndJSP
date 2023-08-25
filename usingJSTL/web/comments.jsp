<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <body>
        <pre>
            userType: <c:out value="${param.userType}" default="parameter doesn't exist (you didn't check 'is Member?')" />
        </pre>

        <strong>Member Comments</strong> <br>
        <hr>${commentList}<hr>

        <c:if test="${param.userType eq 'member'}">
            <jsp:include page="inputComments.jsp" />
        </c:if> 
    </body>
</html>