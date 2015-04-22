<%-- 
    Document   : index
    Created on : 16-Apr-2015, 11:58:10
    Author     : Kasia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
    <center>
    <form action="loginServlet">
    Email: <input type="text" name="email"/><br/><br/>
    Password: <input type="password" name="password"/><br/><br/>
    <input type="submit" value="login"/>
    </form> <br>
    <a href="register.jsp">Register</a>
    </center>
    </body>
</html>
