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
        <style>
            body{
               text-align: center;
            }
           .header{
                padding: 1em;
                color: white;
                background-color: cadetblue;
                clear: left;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div class="header">
            <h2>ViewPost</h2>            
        </div>
        <div class="contianer">
            <h2>UserName</h2>
            <h3>Pet Type : <%=request.getAttribute("viewPostType")%></h3>
            <h3>Sex :<%=request.getAttribute("")%></h3>
            <h3>Age :<%=request.getAttribute("viewPostAge")%></h3>
            <h3>Vaccine :<%=request.getAttribute("viewPostVaccine")%></h3>
            <h3>Location :<%=request.getAttribute("viewPostLocation")%></h3>
            <h3>More :<%=request.getAttribute("viewPostMoreInf")%></h3>
        </div>
    </body>
</html>
