<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <body>
        <h5>Using jsp:include</h5>
        <jsp:include page="Header.jsp">
            <jsp:param name="subTitle" value="We take the sting out of SOAP." />
        </jsp:include>
        
        <br>
        <em>Welcome to our Web Services Support Group.</em><br><br>
        Contact us at: ${initParam.mainEmail}

        <hr>
        <h5>Using c:import</h5>
        <c:import url="Header.jsp">
            <c:param name="subTitle" value="We take the sting out of SOAP." />
        </c:import>
        
    </body>
</html>