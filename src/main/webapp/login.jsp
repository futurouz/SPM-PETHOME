<%-- 
    Document   : login
    Created on : Feb 16, 2018, 2:17:41 PM
    Author     : Dell64
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log in</title>
           <style>
            header, footer {
                padding: 1em;
                color: white;
                background-color: cadetblue;
                clear: left;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <header>
                   <h1>LOGIN</h1>
        </header>
        <form>
            <h2>Login ID:       <input type="text" name="ID" required>
            <h2>Password:     <input type="text" name="Password" required>
            <br><input type="submit" value="Submit">  
        </form>
    </body>
</html>
