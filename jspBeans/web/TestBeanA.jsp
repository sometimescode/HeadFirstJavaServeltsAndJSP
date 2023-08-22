
<html>
    <body>

        Hello. <br>
        userName from form: 
        <%= request.getParameter("userName") %> <br>

        <hr> 
        jsp:useBean id="personA" type="com.example.model.Person" class="com.example.model.Employee"
        <br>
        personA.setName(request.getParameter("userName"))
        <br><br>
        <jsp:useBean id="personA" type="com.example.model.Person" class="com.example.model.Employee"/>
        <% personA.setName(request.getParameter("userName")); %>

        name from person A: 
        <%= personA.getName() %>

        <hr>

        <hr> 
        jsp:useBean id="personB" type="com.example.model.Person" class="com.example.model.Employee"
        <br>
        &nbsp;&nbsp;&nbsp;&nbsp;jsp:setProperty name="personB" property="name" param="userName" 
        <br>

        <br><br>
        <jsp:useBean id="personB" type="com.example.model.Person" class="com.example.model.Employee">
            <jsp:setProperty name="personB" property="name" param="userName" /> 
        </jsp:useBean>
       
        name from person B: 
        <%= personB.getName() %>

        <hr>


    </body>
</html>