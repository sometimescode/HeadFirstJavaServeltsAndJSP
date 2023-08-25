<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <body>
        TABLE: HARDCODED <br>
        <h1>Movie list:</h1>
        <table>
            <tr>
                <td>Amelie</td>
            </tr>
            <tr>
                <td>Return of the King</td>
            </tr>
            <tr>
                <td>Mean Girls</td>
            </tr>
        </table>

        <hr>

        <% String[] movieList = (String[]) request.getAttribute("movieList"); %>
        TABLE: USING SCRIPTLET <br>
        <h1>Movie list:</h1>
        <table>
        <% for(int i = 0; i < movieList.length; i++) { %>
            <tr>
                <td><%= movieList[i] %></td>
            </tr>
        <% } %>
        </table>

        <hr>
        TABLE: USING &lt;c:ForEach&gt; <br>
        <table>
        <c:forEach var="movie" items="${movieList}" >
            <tr>
                <td>${movie}</td>
            </tr>
        </c:forEach>
        </table>

        <hr>
        NESTED TABLE: USING &lt;c:ForEach&gt; (also using varStatus attribute for counter)<br>
        <table>
        <c:forEach var="listElement" items="${movieGroupList}" varStatus="groupCounter">
            <c:forEach var="movie" items="${listElement}" varStatus="movieCounter">
                <tr>
                    <td>[Group ${groupCounter.count}] Movie #${movieCounter.count} -> ${movie}</td>
                </tr>
            </c:forEach>
        </c:forEach>
        </table>

    </body>
</html>