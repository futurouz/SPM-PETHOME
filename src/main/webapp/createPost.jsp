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
        <script language="JavaScript" src="gen_validatorv4.js" type="text/javascript" xml:space="preserve"></script>
    </head>
    <body>
        <style>
            .error_strings {
                font-family: Verdana;
                font-size: 14px;
                color: red;
            }
        </style>
        <div class="navigation">
            <h1>Pet Home</h1>
        </div>
        <h2>Create Post</h2>

        <!-- start form-->
        <form action="createPost" method="myform" name="form" id="myform">
            Type :
            <select name="type">
                <option value="000">[ choose yours ]</option>
                <option value="Puppy">Puppy</option>
                <option value="Cat">Cat</option>
                <option value="Bird">Bird</option>
                <option value="Rabbit">Rabbit</option>
            </select>
            <div id='myform_type_errorloc' class="error_strings"></div>
            Sex :
            <input name="sex" type="radio">
            Male
            <input name="sex" type="radio" >
            Female
            <div id='myform_sex_errorloc' class="error_strings"></div>

            <br>
            Age :
            <input name="age" type="number">          
            <div id='myform_age_errorloc' class="error_strings"></div>

            <br>
            Vaccine : 
            <input name="vaccine" type="number" >
            <div id='myform_vaccine_errorloc' class="error_strings"></div>

            <br>
            Location :
            <input name="locationOfPet" type="text" >
            <div id='myform_locationOfPet_errorloc' class="error_strings"></div>

            <br>
            More :
            <input name="moreInformation" type="textarea">
            <div id='myform_moreInformation_errorloc' class="error_strings"></div>

            <br>
            <input type="submit" value="Submit" />
        </form>

        <script>
            var check = new Validator("myform");
            check.EnableOnPageErrorDisplay()
            check.EnableMsgsTogether();


            check.addValidation("type", "req", "Please select one from the list");
            check.addValidation("type", "dontselect=000");

            check.addValidation("sex", "selone", "Please select an option");

            check.addValidation("age", "req=", "Please enter age field");
            check.addValidation("age", "maxlen=2", "Please enter valid value");

            check.addValidation("vaccine", "req", "Please ente vaccine fieldr")
            check.addValidation("vaccine", "numeric");

            check.addValidation("locationOfPet", "req", "Please enter location field")
            check.addValidation("moreInformation", "req", "Please enter information field")
        </script>
    </body>
</html>
