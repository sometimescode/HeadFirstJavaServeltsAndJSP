<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <body>
        <pre>
            &lt;b&gt;Hello &lt;c:out value='&#36;{user}' default='guest' /&gt;.&lt;/b&gt;
        </pre>
        Output: <b>Hello <c:out value='${user}' default='guest' />.</b>
        
        <hr>

        <pre>
            &lt;b&gt;Hello &lt;c:out value='&#36;{user}'&gt;another guest&lt;/c:out&gt;&lt;/b&gt;
        </pre>
        Output: <b>Hello <c:out value='${user}'>another guest</c:out></b>
        
        <hr>
        <hr>
        
        <div class='tipBox'>
            <b>Tip of the Day:</b> <br/>
            ${pageContent.currentTip}
            <br><br>
            <c:out value='${pageContent.currentTip}' />
        </div>
    </body>
</html>