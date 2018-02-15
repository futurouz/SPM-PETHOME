<%-- 
    Document   : createPost
    Created on : Feb 15, 2018, 8:38:40 PM
    Author     : Ruby_TT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
            Age :
            <input name="age" type="number">
            <br>
            Vaccine :
            <input name="vaccine" type="numner" >
            <br>
            Location :
            <input name="locationOfPet" type="texe" >
            <br>
            More
            <input name="moreInformation" type="textarea">
            
            <p><button type="submit" name="submitValue">Submit</button></p>
            </div>
    </body>
</html>
