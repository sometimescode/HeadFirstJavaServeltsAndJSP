<%@ taglib prefix="mine" uri="randomThings" %>

<html>
    <body>
        <hr>
        Advisor Page (CUSTOM TAG)<br>
        <mine:advice user="${userName}" />

        <hr>
        ROLLIN! (EL FUNCTION, NOT A CUSTOM TAG!) <br>
        ${mine:rollIt()}
    </body>
</html>