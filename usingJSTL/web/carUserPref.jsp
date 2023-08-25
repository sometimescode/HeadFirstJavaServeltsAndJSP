<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <body>
        <pre>
            userPref without specifying scope: ${userPref} <br>
            userPref taken from sessionScope: ${sessionScope.userPref}
        </pre>
        
        <hr>

        <h1>If/Else JSP ver using scriptlet</h1>
        <h2>
        <%
            String userPref = (String) session.getAttribute("userPref");
            if(userPref.equals("performance")) {
                out.println("Now you can stop even if you <em>do</em> drive insanely fast.");
            } else if(userPref.equals("safety")) {
                out.println("Our brakes won't lock up, no matter how bad a driver you are.");
            } else if(userPref.equals("maintenance")) {
                out.println("Lost your tech job? No problem--you won't have to service these brakes for at least three years.");
            } else {
                out.println("Our brakes are the best.");
            }
        %>
        </h2><strong>The Brakes</strong> <br>
        Our advanced anti-lock brake system (ABS) is engineered to give you the ability to steer even as you're
        stopping. We have the best speed sensors of any car this size. <br>

        <hr>

        <h1>If/Else JSTL ver using c:choose, c:when, and c:otherwise</h1>
        <h2>
        <c:choose>
            <c:when test="${userPref == 'performance'}">
                Now you can stop even if you <em>do</em> drive insanely fast.
            </c:when>

            <c:when test="${userPref == 'safety'}">
                Our brakes won't lock up, no matter how bad a driver you are.
            </c:when>

            <c:when test="${userPref == 'maintenance'}">
                Lost your tech job? No problem--you won't have to service these brakes for at least
                three years.
            </c:when>            

            <c:otherwise>
                Our brakes are the best.
            </c:otherwise>
        </c:choose>
        </h2><strong>The Brakes</strong> <br>
        Our advanced anti-lock brake system (ABS) is engineered to give you the ability to steer even as you're
        stopping. We have the best speed sensors of any car this size. <br>

    </body>
</html>