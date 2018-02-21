<%-- 
    Document   : login
    Created on : Feb 16, 2018, 2:17:41 PM
    Author     : Dell64
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>PetHome - Log in</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://fonts.googleapis.com/css?family=Kreon|Taviraj" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="main.css"/>
        <script language="JavaScript" src="gen_validatorv4.js" type="text/javascript" xml:space="preserve"></script>
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12  top-bg">
                    <h1>PetHome</h1>
                </div>
            </div>
            <div class="panel">
                <div class="row">
                    <div class="col-md-4 offset-md-2">
                        <div class="login_panel">
                            <form action="login" method="post" id="myform" class="myform"> 
                                <div class="form-group">
                                    <label for="username">Username</label>      
                                    <input type="text" name="username" class="form-control">
                                    <div id='myform_username_errorloc' class="error_strings test"></div>
                                </div>
                                <div class="form-group">
                                    <label for="password">Password</label>
                                    <input type="password" name="password" class="form-control">
                                    <div id='myform_password_errorloc' class="error_strings test"></div>
                                    <div class="error-login">
                                        <p>${message}</p>
                                    </div>
                                </div>
                                <input type="submit" value="Login" class="btn all-submit">  
                            </form>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <img src="image/dog.gif" alt="dog" class="img-responsive"   width="100%"/>
                    </div>
                </div>
            </div> 
            <script>
                var check = new Validator("myform");
                check.EnableOnPageErrorDisplay()
                check.EnableMsgsTogether();

                check.addValidation("username", "req", "Please enter your username");
                check.addValidation("password", "req", "Please enter your password");
            </script>
    </body>
</html>
