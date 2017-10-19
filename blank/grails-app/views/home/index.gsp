<%@ page import="org.grails.guides.Vehicle" %>
<html>
<head>
    <meta name='layout' content='public'/>
</head>
<body>
    <div id="content" role="main">
        <section class="row colset-2-its">
            <h1>Welcome ${name}, to our Home Page!</h1>
            <g:if test="${flash.message}">
                <div class="message" role="status">${flash.message}</div>
            </g:if>

            <p>There are ${vehicleTotal} vehicles in the database.</p>
            <ul>
            <g:each in="${Vehicle.list()}" var="vehicle">
                <li>
                    <g:link controller="vehicle" action="show" id="${vehicle.id}">
                        ${vehicle}
                    </g:link>
                </li>
            </g:each>
            </ul>

       <!-- <form action='/home/updateName' method='post' style="margin:0 auto;width:320px"> -->
            <g:form action="updateName" style="margin:0 auto;width:320px">
       <!--     <input type='text' name='name' value='' id='name'> -->
                <g:textField name='name' value='' />
       <!--     <input type='submit' name='Update name' value='Update name' id='Update name'> -->
                <g:submitButton name='Update name' />
       <!-- </form> -->
            </g:form>

        </section>
    </div>
</body>
</html>
