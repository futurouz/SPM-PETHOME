<%-- 
    Document   : feed
    Created on : Feb 15, 2018, 11:19:25 PM
    Author     : azlich
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="Model.PostOfUser"%>
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
        <p>
    <c:forEach items="${posts.user}" var="u">
        <h2>${u.username}</h2>
        <h2>${u.name}</h2>
        <h2>${u.surname}</h2>
    </c:foreach>
    <c:forEach items="${posts.post}" var="p">
        <h2>${p.postid}</h2>
        <h2>${p.age}</h2>
        <h2>${p.sex}</h2>
    </c:foreach>
        <%
            ArrayList<PostOfUser> pous = (ArrayList)request.getAttribute("posts");
            
            %>
    <h1><%= pous.get(0).getUser().getUsername() %></h1>
    <h1><%= pous.get(0).getPost().getPostId()%></h1>
    <h1><%= pous.get(0).getPost().getAge() %></h1>
    <h1><%= pous.get(0).getPost().getSex()%></h1>
    <h1><%= pous.get(0).getUser().getName()%></h1>
    <h1><%= pous.get(0).getUser().getSurname()%></h1>
</p>
</body>
</html>
