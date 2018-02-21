<%-- 
    Document   : createPost
    Created on : Feb 15, 2018, 8:38:40 PM
    Author     : Ruby_TT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>PetHome - New post</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Kreon|Taviraj" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="main.css"/>
        <script language="JavaScript" src="gen_validatorv4.js" type="text/javascript" xml:space="preserve"></script>
    </head>
    <body class="create-body">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12  top-bg">
                    <a href="./feed.jsp"> 
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
            <div class="row">
                <div class="col-md-12 text-center create">
                    <!--                    <p>Create Post<p>-->
                </div>
            </div>
            <!-- start form-->
            <div class="row">
                <div class="col-md-6 offset-md-3">
                    <form action="createPost" method="myform" name="form" id="myform">
                        <div class="create-panel">
                            <div class="form-group">
                                <label for="sex ">Sex</label><br>
                                <div class="form-check form-check-inline">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="sex" value="M"> Male
                                    </label>
                                </div>
                                <div class="form-check form-check-inline">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="sex" value="F"> Female
                                    </label>
                                </div>
                                <div id='myform_sex_errorloc' class="error_strings test"></div>
                            </div>

                            <div class="form-group">
                                <label for="type ">Type</label>
                                <select name="type" class="form-control">
                                    <option value="000">Select</option>
                                    <option value="Puppy">Puppy</option>
                                    <option value="Cat">Cat</option>
                                    <option value="Bird">Bird</option>
                                    <option value="Rabbit">Rabbit</option>
                                </select>
                                <div id='myform_type_errorloc' class="error_strings"></div>
                            </div>
                            <div class="form-group">
                                <label for="age ">Age</label>
                                <input name="age" type="number" class="form-control">          
                                <div id='myform_age_errorloc' class="error_strings"></div>
                            </div>
                            <div class="form-group">
                                <label for="vaccine ">Vaccine</label>
                                <input name="vaccine" type="number" class="form-control" >
                                <div id='myform_vaccine_errorloc' class="error_strings"></div>
                            </div>
                            <div class="form-group">
                                <label for="locationOfPet ">Location</label>
                                <input name="locationOfPet" type="text"  class="form-control">
                                <div id='myform_locationOfPet_errorloc' class="error_strings"></div>
                            </div>
                            <div class="form-group">
                                <label for="moreInformation ">More</label>
                                <input name="moreInformation" type="textarea" class="form-control">
                                <div id='myform_moreInformation_errorloc' class="error_strings"></div>
                            </div>
                            <input type="submit" value="Create Post" class="btn all-submit" />
                    </form>
                </div>
            </div>
        </div>
    </div>

    <script>
        var check = new Validator("myform");
        check.EnableOnPageErrorDisplay()
        check.EnableMsgsTogether();


        check.addValidation("type", "req", "Please select one from the list");
        check.addValidation("type", "dontselect=000");

        check.addValidation("sex", "selone", "Please select an option");

        check.addValidation("age", "req=", "Please enter age");
        check.addValidation("age", "maxlen=2", "Invalid value");

        check.addValidation("vaccine", "maxlen=2", "Invalid value")
        check.addValidation("vaccine", "req", "Please enter vaccine")


        check.addValidation("locationOfPet", "req", "Please enter location")
        check.addValidation("moreInformation", "req", "Please enter information")
    </script>
</body>
</html>
