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
        This is a comparison of Simple vs Classic Tag with simple body content.<br>
        Classic: <br>
        <mine:classicTagBody>
            [Passed as Body-Content] This is the body
        </mine:classicTagBody>
        <br> Simple: <br>
        <mine:simpleTagBody>
            [Passed as Body-Content] This is the body
        </mine:simpleTagBody>
        <br><br>
        
        This is a comparison of looping in Simple vs Classic Tag with body content from BE the Container exercise.<br> <br>
        Simple: <br>
        <table border="1">
            <mine:simpleTagIteration>
                <tr><td>${movie}</td></tr>
            </mine:simpleTagIteration>
        </table>
        <br> Classic: <br>
        <table border="1">
            <mine:classicTagIteration>
                <tr><td>${movie}</td></tr>
            </mine:classicTagIteration>
        </table>
        <br>

    </body>
</html>