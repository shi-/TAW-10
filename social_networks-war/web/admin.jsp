<%-- 
    Document   : admin
    Created on : 22-Apr-2015, 11:10:43
    Author     : Kasia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin panel</title>
    </head>
    <body>
    <%
    //allow access only if session exists
    String user = null;
    if((session.getAttribute("name") == null) || (session.getAttribute("admin")!="yes")){
            response.sendRedirect("index.jsp");
    }
    %>
        <h1>You're logged in as an admin.</h1>
        <br>
        <form action="logoutServlet" method="post">
        <input type="submit" value="Logout" >        
    </body>
</html>
