<%-- 
    Document   : signup
    Created on : 16-Mar-2021, 5:18:04 pm
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="javascript/index.js" type="text/javascript"></script>

        <title>edu/signup</title>
        <!--css-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/signup.css" rel="stylesheet" type="text/css"/>
        <link href="css/PasswordValidator.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>

        <main class="d-flex align-items-center" style="height:100vh">
            <div class = "container">
                <div class="row">
                    <div class="col-md-4 offset-md-1">
                        <div class="card">
                            <div class="card-header">
                                <h4><a href="index.jsp"><span class="fa fa-home" aria-hidden="true"></a></span>>Create an account</h4>

                            </div>
                            <div class="card-body">
                                <form id="reg" action="function:javascript()" method="POST">
                                    <div class="form-group">

                                        <input type="text" required name="user_name" class="form-control forcolor" placeholder="Full name">
                                    </div>

                                    <div class="form-group">
                                        <input type="email" required name="user_email" class="form-control forcolor" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Email address">

                                    </div>

                                    <div class="form-group">
                                        <input id="psw" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" type="password" required name="user_password" class="form-control forcolor" id="exampleInputPassword1" placeholder="Password">
                                    </div>

                                    <div class="form-check ">
                                        <input type="checkbox" name="check" class="form-check-input"  id="exampleCheck1">
                                        <label class=" forcolor" for="exampleCheck1">Agree terms & Conditions</label>
                                    </div>
                                    <div  class="spinner text-center"id="loader" style="display: none">
                                        <span class="fa fa-refresh fa-spin fa-2x "></span>
                                        <h5>Please wait..</h5>
                                    </div>
                                    <button id="submit-btn"type="submit" class="btn btn-primary form-control ">Register</button>
                                </form>
                                <h6 style="padding-top: 10px">Have an account <a href="login.jsp">Login</a></h6>
                            </div>
                            <div id="message">
                                <h3>Password must contain the following:</h3>
                                <p id="letter" class="invalid">A <b>lowercase</b> letter</p>
                                <p id="capital" class="invalid">A <b>capital (uppercase)</b> letter</p>
                                <p id="number" class="invalid">A <b>number</b></p>
                                <p id="length" class="invalid">Minimum <b>8 characters</b></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>	

        </main>


        <script src="javascript/PasswordValidator.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>      
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script src="javascript/Signup.js" type="text/javascript"></script>
    </body>
</html>
