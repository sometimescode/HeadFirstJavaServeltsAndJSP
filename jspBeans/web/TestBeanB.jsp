
<html>
    <body>

        Hello. <br>
        name from form: 
        <%= request.getParameter("name") %> <br>

        <hr> 
        jsp:useBean id="personA" type="com.example.model.Person" class="com.example.model.Employee"
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;jsp:setProperty name="personA" property="name"
        <br>

        <br><br>
        <jsp:useBean id="personA" type="com.example.model.Person" class="com.example.model.Employee">
            <jsp:setProperty name="personA" property="name"/> 
        </jsp:useBean>
       
        name from person A: 
        <%= personA.getName() %>

        <hr>

        <hr> 
        jsp:useBean id="personB" type="com.example.model.Person" class="com.example.model.Employee"
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;jsp:setProperty name="personB" property="*"
        <br>

        <br><br>
        <jsp:useBean id="personB" type="com.example.model.Person" class="com.example.model.Employee">
            <jsp:setProperty name="personB" property="*"/> 
        </jsp:useBean>
       
        name from person B (Person type): 
        <%= personB.getName() %> <br>
        empID from person B (Person type): 
        <%= ((com.example.model.Employee) personB).getEmpID() %> <br>
        <hr>

        <hr> 
        jsp:useBean id="personC" type="com.example.model.Employee" class="com.example.model.Employee"
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;jsp:setProperty name="personC" property="*"
        <br>

        <br><br>
        <jsp:useBean id="personC" type="com.example.model.Employee" class="com.example.model.Employee">
            <jsp:setProperty name="personC" property="*"/> 
        </jsp:useBean>
       
        name from person C (Employee type now): 
        <%= personC.getName() %> <br>
        empID from person C (Employee type now): 
        <%= personC.getEmpID() %> <br>
        <hr>

    </body>
</html>