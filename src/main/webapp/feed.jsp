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
            <a href="./createPost.jsp">
                <button type="submit">Post</button>
            </a>
        </p>        
    <c:forEach items="${posts}" var="p">
        <td>${p.user.username}</td>
        <td>${p.post.postId}</td>
        <td>${p.post.userId}</td>
        <td>${p.post.petId}</td>
        <td>${p.post.content}</td>
    </c:foreach>

</body>
</html>
