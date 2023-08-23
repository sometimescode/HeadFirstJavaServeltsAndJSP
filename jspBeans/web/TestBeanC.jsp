<html>
    <body>
        <jsp:useBean id="dog" class="com.example.model.Dog">
            <jsp:setProperty name="dog" property="name" value="Scooby" />
        </jsp:useBean>
        <jsp:useBean id="person" class="com.example.model.ConcretePerson">
            <jsp:setProperty name="person" property="dog" value="<%= dog %>" />
        </jsp:useBean> 
        DOG:
        <br>dog: ${dog}
        <br>dog.name: ${dog.name}
        <hr>
        Person:
        <br>person: ${person}
        <br>person.dog: ${person.dog}
        <br>person.dog.name: ${person.dog.name}
        <hr>
        FYI: jsp:setProperty name="person" property="dog" value="<'%= dog %'>"
        Ignore the single quotes ('). I kept them there because I don't want the page to evaluate the scriptlet.
        There's probably a better way to do that.

        But the variants value="<'% dog %'> and value="dog" won't work. So it looks like an expression is the way to do it.
        
    </body>
</html>