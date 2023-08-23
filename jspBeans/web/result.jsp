<html>
    <body>
        Dog's name using scripting is: <%= ((com.example.model.ConcretePerson) request.getAttribute("person")).getDog().getName() %>
        <jsp:useBean id="person" class="com.example.model.ConcretePerson" scope="request" />
        <br><br>
        Dog's name using standard actions is: <jsp:getProperty name="person" property="dog" />
        <br><br>
        Dog's name using Expression Language (EL) is: ${person.dog.name} 
    </body>
</html>