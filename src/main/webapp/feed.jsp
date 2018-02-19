<%-- 
    Document   : feed
    Created on : Feb 15, 2018, 11:19:25 PM
    Author     : azlich
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <style>
            header, footer {
                padding: 1em;
                color: white;
                background-color: cadetblue;
                clear: left;
                text-align: center;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feed Page</title>
    </head>
    <body>
        <header>
            <h1>PET HOME</h1>
        </header>
        <p>
            <input type="text" placeholder="Search.." name="search">        
            <button type="submit">Search</button>            
            <button type="submit">Post</button>
        </p>
       <c:forEach items="${posts}" var="p">
           <td>${p.postId}</td>
           <td>${p.userId}</td>
           <td>${p.petId}</td>
           <td>${p.content}</td>
           
       </c:foreach>
        
    </body>
</html>

<%-- <%
            for(int i = 0; i < 10;i++){
                %>
                <img src="html5.gif" alt="HTML5 Icon" style="width:128px;height:128px;"> 
           
            <% } %>--%>