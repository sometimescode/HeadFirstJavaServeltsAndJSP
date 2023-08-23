<html>
    <body>
    Brackets TEST Zone !!!!
    
    <hr>
    Music List (Array of Strings):
    <br> EL ->
    <br>musicList: ${musicList}
    <br>0: ${musicList[0]}
    <br>"1": ${musicList["1"]}
    <br><br> Standard Action (I.e. jsp:getProperty) ->
    <br>"jsp:getProperty" is typically used to retrieve the value of a property of a JavaBean object. 
    It's not designed to directly fetch an element at a specific index from an array or collection. 
    If you want to access an element at a specific index in an array or collection in JSP, 
    you would generally need to use scriptlet or JSTL (JavaServer Pages Standard Tag Library) for more complex operations.
    <br><br> Scriptlet ->
    <%-- Remember, you have to cast these things properly yourself to avoid the jsp from complaining --%>
    <% String[] arr = (String[]) request.getAttribute("musicList"); %>
    <br> musicList: <%= arr %>
    <br> musicList[0]: <%= arr[0] %>
    <hr>

    <hr>
    Food List (ArrayList of Strings):
    <br> EL ->
    <br> Foods are: ${favoriteFood}
    <br> [0]: First food is ${favoriteFood[0]}
    <br> ["1"]: Second food is ${favoriteFood["1"]}
    <hr>

    <hr>
    Music Map (for JavaBeans and Maps, you can use either "[]" or "." operator):
    <br> EL ->
    <br> Music Map is: ${musicMap}
    <br> Ambient is: ${musicMap.Ambient} (musicMap.Ambient)
    <br> Ambient is: ${musicMap["Ambient"]} (musicMap["Ambient"])
    <br> Music is: ${musicMap[Ambient]} (musicMap[Ambient] where Ambient is not set at all in servlet)
    <br> Music is: ${musicMap[Genre]} (musicMap[Genre] where Genre is a request attribute set in servlet, Genre = "Ambient")
    <br> Music is: ${musicMap["Genre"]} (musicMap["Genre"] which is not a key in the map)
    <br> Music is: ${musicMap[MusicType[0]]} (musicMap[MusicType[0]] where MusicType is an Array of valid keys, and [0] = "Ambient")
    <hr>

    </body>
</html>