<%-- 
    Document   : createPost
    Created on : Feb 15, 2018, 8:38:40 PM
    Author     : Ruby_TT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script>
            function validateForm() {
                var x = document.forms["myForm"]["age"].value;
                var y = document.forms["myForm1"]["vaccine"].value;
                var z = document.forms["myForm2"]["locationOfPet"].value;
                var zz = document.forms["myForm3"]["moreInformation"].value;
                if (x == "") {
                    alert("INPUT NUMBER");
                    return false;
                } else if (y == "") {

                    alert("INPUT DATA vaccine");
                } else if (z == "") {

                    alert("INPUT DATA locationOfPet");
                } else if (zz == "") {

                    alert("INPUT DATA moreInformation");
                }
            }
        </script>

        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>CreatePost</title>
        <link href="style.css" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    </head>
    <body>
        <div class="navigation">
            <h1>Pet Home</h1>
            <%-- <div align ="right"> <image src="image/turn-notifications-on-button.svg"></div>--%>
        </div>
        <h2>Create Post</h2>
        <form>
            <div class="formInput">
                Type :

                <select name="type">
                    <option value="Item 3">choose</option>
                    <option value="Item1">Puppy</option>
                    <option value="Item 2">Cat</option>
                    <option value="Item 3">Bird</option>
                    <option value="Item 3">Rabbit</option>
                </select>

                <br>
                Sex :
                <input name="sex" type="radio" value="male">
                Male
                <input name="sex" type="radio" value="female">
                Female
                <br>

                <%-- onsubmit="return validateForm()" method="post"><--%>
                Age :
                <input name="age" type="number">
                </form>
                <br>

                <%--onsubmit="return validateForm()" method="post"><--%>
                Vaccine : 
                <input name="vaccine" type="number" >

                <br>

                <%--  onsubmit="return validateForm()" method="post"><--%>
                Location :
                <input name="locationOfPet" type="text" >

                <br>

                <%--onsubmit="return validateForm()" method="post"><--%>
                More :
                <input name="moreInformation" type="textarea">

            </div>
        </form>
    </body>
</html>
