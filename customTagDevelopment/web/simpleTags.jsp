<%@ taglib prefix="myTags" uri="simpleTags" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.model.Movie" %>
 
<html>
    <body>
        Simple1:
        <pre>
            Simple and Clean
        </pre>
        <myTags:simple1 />

        <hr>
        Simple2:
        <pre>
            Nesting a static body in the tag
        </pre>
        <myTags:simple2>
            This is the body
        </myTags:simple2>

        <hr>
        Simple3:
        <pre>
            Nesting a body in the tag with EL. The variable used in the EL block
        </pre>
        <myTags:simple3>
            Message is: ${message}
        </myTags:simple3>

        
        <hr>
        Simple4:
        <pre>
            Using single row passed body-content &lt;tr&gt;&lt;td&gt;&#36;{movie}&lt;/td&gt;&lt;/tr&gt; in tag handler's loop to form table content <br>
            &#36;{movie} doesn't exist yet. The tag handler deals with all that.
        </pre>
        <table>
            <myTags:simple4>
                <tr><td>${movie}</td></tr>
            </myTags:simple4>
        </table>

        <hr>
        Simple5:
        <pre>
            Using row with two td fields based on Movie. Tag has attribute that's being passed a movie collection created using scriptlet (this is just for demonstration)
        </pre>
        <% 
            List<Movie> movieCollection = new ArrayList<Movie>();
            
            Movie toAdd1 = new Movie();
            toAdd1.setName("Adventure Story");
            toAdd1.setGenre("Adventure");

            Movie toAdd2 = new Movie();
            toAdd2.setName("Comedy Story");
            toAdd2.setGenre("Comedy");

            Movie toAdd3 = new Movie();
            toAdd3.setName("Romance Story");
            toAdd3.setGenre("Romance");

            movieCollection.add(toAdd1);
            movieCollection.add(toAdd2);
            movieCollection.add(toAdd3);

            //to give EL access to movieCollection created in the scriptlet
            request.setAttribute("movieCollection", movieCollection);
        %>

        <table>
            <myTags:simple5 movieList="${movieCollection}">
                <tr>
                    <td>${movie.name}</td>
                    <td>${movie.genre}</td>
                </tr>
            </myTags:simple5>
        </table>

        <hr>
        Simple6:
        <pre>
            this tag throws a SkipPageException which skips displaying anything past where it's called, but allows everything
            before it to still be called        
        </pre>
        About to invoke a tag that throws SkipPageException <br>       
        <myTags:simple6 />
        <br> Back in the page after invoking the tag.
        
    </body>
</html>