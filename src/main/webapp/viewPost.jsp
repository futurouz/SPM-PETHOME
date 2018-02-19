<%-- 
    Document   : viewPost
    Created on : Feb 19, 2018, 4:19:36 PM
    Author     : Ruby_TT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Post</title>
        <link href="style.css" rel="stylesheet">
    </head>
    <body>
        <div class="header">
            <h2>ViewPost</h2>            
        </div>
        <div class="content">
            <h1>UserName</h1>
            <h2>Pet Type <%=request.getAttribute("")%></h2>
            <h2>Sex <%=request.getAttribute("")%></h2>
            <h2>Age <%=request.getAttribute("")%></h2>
            <h2>Vaccine <%=request.getAttribute("")%></h2>
            <h2>Location <%=request.getAttribute("")%></h2>
            <h2>More <%=request.getAttribute("")%></h2>
        </div>
    </body>
</html>
