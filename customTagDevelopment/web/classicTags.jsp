<%@ taglib prefix="mine" uri="simpleTags" %>
<html>
    <body>
        Classic Tag One:
        <pre>
            showcase use of doStartTag()
        </pre>
        <mine:classicOne />

        <hr>
        Classic Tag Two:
        <pre>
            showcase use of doStartTag() and doEndTag()
        </pre>
        <mine:classicTwo />

        <hr>
        This is a comparison of Simple vs Classic Tag with a Body.<br>
        Classic: <br>
        <mine:classicTagBody>
            [Passed as Body-Content] This is the body
        </mine:classicTagBody>
        <br> Simple: <br>
        <mine:simpleTagBody>
            [Passed as Body-Content] This is the body
        </mine:simpleTagBody>
        <br>


    </body>
</html>