<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
    <body>
        <h5>Before the C:SET-ing</h5>
        Value of dog.dogName (just called useBean, dogName was preset in servlet): <b>${dog.dogName}</b> <br>
        Value of varToRemove (varToRemove was preset in servlet): <b>${varToRemove}</b> <br>
        Value of varToBeMade (scope not specified-&gt; &#36;{varToBeMade}) (exists in request scope only): <b>${varToBeMade}</b> <br>
        Value of varToBeMade (request scope specified, so should be same as above-&gt; &#36;{requestScope.varToBeMade}): <b>${requestScope.varToBeMade}</b> <br>
        Value of varToBeMade (page scope specified-&gt; &#36;{pageScope.varToBeMade}): <b>${pageScope.varToBeMade}</b> <br>
        <hr>

        <h5>After the C:SET-ing (non-removal--passing non-null values)*</h5>
        *For varToBeMade, did not specify optional scope attribute, so it will be set in the default scope (page scope). It shouldn't touch other scopes. <br>
        <c:set var="varToRemove" value="I have been replaced not removed!" />
        <c:set target="${dog}" property="dogName" value="Postset Name" />
        <c:set var="varToBeMade" value="For I have been birthed into existence within the page plain!" />
        Value of dog.dogName: <b>${dog.dogName}</b> <br>
        Value of varToRemove: <b>${varToRemove}</b> <br>
        Value of varToBeMade (request scope specified-&gt; &#36;{requestScope.varToBeMade}): <b>${requestScope.varToBeMade}</b> <br>
        Value of varToBeMade (page scope specified-&gt; &#36;{pageScope.varToBeMade}): <b>${pageScope.varToBeMade}</b> <br>
        <hr>

        <h5>After the C:SET-ing (removal--passing an EL that evaluates to null)</h5>
        <c:set var="varToRemove" value="${aTheAbyssGazingEternalFreefaller}" />
        <c:set target="${dog}" property="dogName" value="${bTheEverFaithfulWandererOfTheMortalPlain}" />
        Value of dog itself (even though we're changing dog.dogName, just to see if the object itself is removed or just the property set to null): <b>${dog}</b> <br>
        Value of dog.dogName: ${dog.dogName} <br>
        Value of varToRemove: ${varToRemove} <br>
        <br>
        Attempt at re-setting the dog.dogName since it looks like the object dog still exists. <br>
        <c:set target="${dog}" property="dogName" value="Restored Name" />
        Value of dog itself (even though we're changing dog.dogName, just double-checking in case it's a prank: <b>${dog}</b> <br>
        Value of dog.dogName: <b>${dog.dogName}</b> <br>

        <hr>

        <h5>C:REMOV(E)-al of varToBeMade</h5>
        Removing varToBeMade with the optional scope attribute set to page.<br>
        <c:remove var="varToBeMade" scope="page" /> 
        Value of varToBeMade (request scope specified-&gt; &#36;{requestScope.varToBeMade}): <b>${requestScope.varToBeMade}</b> <br>
        Value of varToBeMade (page scope specified-&gt; &#36;{pageScope.varToBeMade}): <b>${pageScope.varToBeMade}</b> <br>
        <br>
        Adding back varToBeMade. Page scope is default, so don't need to specify optional scope attribute. <br>
        <c:set var="varToBeMade" value="For I have been reincarnated and must restart the cycle." />
        Value of varToBeMade (request scope specified-&gt; &#36;{requestScope.varToBeMade}): <b>${requestScope.varToBeMade}</b> <br>
        Value of varToBeMade (page scope specified-&gt; &#36;{pageScope.varToBeMade}): <b>${pageScope.varToBeMade}</b> <br>
        <br>
        Removing varToBeMade, did not include the scope attribute, so it should remove the variable across all scopes. <br>
        <c:remove var="varToBeMade" />
        Value of varToBeMade (request scope specified-&gt; &#36;{requestScope.varToBeMade}): <b>${requestScope.varToBeMade}</b> <br>
        Value of varToBeMade (page scope specified-&gt; &#36;{pageScope.varToBeMade}): <b>${pageScope.varToBeMade}</b> <br>

    </body>
</html>