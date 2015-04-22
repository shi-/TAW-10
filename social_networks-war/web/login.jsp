<%-- 
    Document   : login
    Created on : 16-Apr-2015, 12:06:15
    Author     : Kasia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logged in!</title>
    </head>
    <body>
    <%
        //allow access only if session exists
    String user = null;
    if(session.getAttribute("name") == null){
            response.sendRedirect("index.jsp");
    }
%>
        <h1>You're now logged in!</h1>
        <br>
        <form action="logoutServlet" method="post">
        <input type="submit" value="Logout" >
        </form>
    </body>
</html>
