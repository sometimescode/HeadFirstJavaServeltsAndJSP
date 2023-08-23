
<html>
    <body>
        <hr>
        FORM PARAMS: <br>
        Request param name is: ${param.name} <br>
        Request param empID is: ${param.empID} <br>
        Request param food is: ${param.food} <br>

        First food request param: ${paramValues.food[0]} <br>
        Second food request param: ${paramValues.food[1]} <br>

        Request param name: ${paramValues.name[0]}
        <hr>

        <hr>
        HEADER: <br>
        Host is: ${header.host}
        Method is: ${pageContext.request.method}
        <hr>

        <hr>
        COOKIE: <br>
        Also treat this as a test of case sensitivity in EL: <br>
        JSESSIONID (cookie.JSESSIONID.value) is: ${cookie.JSESSIONID.value} <br> 
        JSESSIONID (cookie.jsessionid.value) is: ${cookie.jsessionid.value} <br> 
        JSESSIONID (cookie["JSESSIONID"].value) is: ${cookie["JSESSIONID"].value} <br> 
        JSESSIONID (cookie["jsessionid"].value) is: ${cookie["jsessionid"].value} <br>
        <hr>

        <hr>
        CONTEXT PARAM: <br>
        mainEmail: ${initParam.mainEmail}
        <hr>
    </body>
</html>