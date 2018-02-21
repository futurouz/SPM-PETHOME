<%-- 
    Document   : viewPost
    Created on : Feb 19, 2018, 4:19:36 PM
    Author     : Ruby_TT
--%>

<%@page import="Model.PostOfUser"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://fonts.googleapis.com/css?family=Kreon|Taviraj" rel="stylesheet">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="main.css"/>
        <title>Post</title>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12  top-bg">
                    <a href="feed">
                        <h1>PetHome</h1>
                    </a>
                    <a href="logout">
                        <span class="logout">Logout</span>
                    </a>
                    <a href="#">
                        <span clas>${user.username}</span>
                    </a>
                </div>
            </div>
            <%
                PostOfUser pou = (PostOfUser) request.getAttribute("pos");
            %>
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <div class="view-post">
                        <p><b>Username:</b> <%= pou.getUser().getName()%> <%= pou.getUser().getSurname()%></p>
                        <p><b>Type:</b> <%= pou.getPost().getType()%></p>
                        <p><b>Sex:</b> <%= pou.getPost().getSex()%></p>
                        <p><b>Age:<b/> <%= pou.getPost().getAge()%></p>
                        <p><b>Vaccine:</b> <%= pou.getPost().getVaccine()%></p>
                        <p><b>Location:</b> <%= pou.getPost().getLocation()%></p>
                        <p><b>More:</b> <%= pou.getPost().getContent()%></p>
                        <button onclick="changeColor()" class="btn" id="int_but">I'm interested</button>
                    </div>
                </div>
            </div>
        </div>
        <script>
            function changeColor() {
                document.getElementById('int_but').style.backgroundColor = '#D4929F';
                document.getElementById('int_but').style.color = 'white';
                document.getElementById('int_but').style.border = '1px solid #D4929F';
            }
        </script>
    </body>
</html>
