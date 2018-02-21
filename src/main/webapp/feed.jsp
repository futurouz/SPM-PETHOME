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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>PetHome</title>
        <link href="https://fonts.googleapis.com/css?family=Kreon|Taviraj" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="main.css"/>
    </head>


</body>
=======
<div class="container-fluid">
    <div class="row">
        <div class="col-md-12  top-bg">
            <a href="./feed.jsp">
                <h1>PetHome</h1>
            </a>
            <a href="#">
                <span class="logout">Logout</span>
            </a>
            <a href="#">
                <span clas>Admin</span>
            </a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 offset-md-4">
            <div class="search-tab">
                <div class="input-group">
                    <input type="text" class="form-control ">
                    <span class="input-group-btn">
                        <button class="btn">Search</button>
                        <button class="btn all-submit">
                            <a href="./createPost.jsp">New post</a>
                        </button>
                    </span>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-10 offset-md-1">
            <%
                ArrayList<PostOfUser> pous = (ArrayList) request.getAttribute("posts");

            %>
            <h1><%= pous.get(0).getUser().getUsername()%></h1>
            <h1><%= pous.get(0).getPost().getPostId()%></h1>
            <h1><%= pous.get(0).getPost().getAge()%></h1>
            <h1><%= pous.get(0).getPost().getSex()%></h1>
            <h1><%= pous.get(0).getUser().getName()%></h1>
            <h1><%= pous.get(0).getUser().getSurname()%></h1>
        </div>
    </div>
</div>
</body>

</html>
