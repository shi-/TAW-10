<%-- 
    Document   : register
    Created on : 21-Apr-2015, 18:02:08
    Author     : Kasia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
    <center>
    <form action="registerServlet">
    Email: <input type="text" name="email"/><br/><br/>
    Password: <input type="password" name="password"/><br/><br/>
    Name: <input type="text" name="name"/><br/><br/>
    Last name: <input type="text" name="lastname"/><br/><br/>
    <input type="submit" value="register"/>
    </form>
    </center>
    </body>
</html>
