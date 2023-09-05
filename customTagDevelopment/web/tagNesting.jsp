<%@ taglib prefix="mine" uri="simpleTags" %> 

<html>
    <body>
        Classic Tag Nested Twice Within Itself
        <mine:classicTagNesting>
            <mine:classicTagNesting>
                <mine:classicTagNesting />
            </mine:classicTagNesting>
        </mine:classicTagNesting>

        <hr>

        Simple Tag with Classic Parent <br>
        <mine:classicParent name="attribute Name Value from mine:classicParent is this">
            <mine:simpleInner />
        </mine:classicParent>

        <hr>

        Classic Tags Parent and Child where Parent is knowledgable of Child's values (because Child passes it up to the parent, since the Parent does not know about its children's contents) <br>
        <mine:menu>
            <mine:menuItem itemValue="Dogs" />
            <mine:menuItem itemValue="Cats" />
            <mine:menuItem itemValue="Horses" />
        </mine:menu>
        
    </body>
</html>