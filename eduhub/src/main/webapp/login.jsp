<%@page import="com.eduhub.entities.Messages" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Bootstrap Elegant Account Login Form with Avatar Icon</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round" rel="stylesheet">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/index_style.css" rel="stylesheet" type="text/css"/>
        <style>
            body {
                color: #999;
                background: #f5f5f5;
                font-family: 'Varela Round', sans-serif;
            }
            .form-control {
                box-shadow: none;
                border-color: #ddd;
            }
            .form-control:focus {
                border-color: darkslategray; 
            }
            .login-form {
                width: 350px;
                margin: 0 auto;
                padding: 30px 0;
            }
            .login-form form {
                color: #434343;
                border-radius: 1px;
                margin-bottom: 15px;
                background: #fff;
                border: 1px solid #f3f3f3;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);
                padding: 30px;
            }
            .login-form h4 {
                text-align: center;
                font-size: 22px;
                margin-bottom: 20px;
            }
            .login-form .avatar {
                color: #fff;
                margin: 0 auto 30px;
                text-align: center;
                width: 100px;
                height: 100px;
                border-radius: 50%;
                z-index: 9;
                background: darkslategray;
                padding: 15px;
                box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
            }
            .login-form .avatar i {
                font-size: 62px;
            }
            .login-form .form-group {
                margin-bottom: 20px;
            }
            .login-form .form-control, .login-form .btn {
                min-height: 40px;
                border-radius: 2px; 
                transition: all 0.5s;
            }
            .login-form .close {
                position: absolute;
                top: 15px;
                right: 15px;
            }
            .login-form .btn {
                background: darkslategrey;
                border: none;
                line-height: normal;
            }
            .login-form .btn:hover, .login-form .btn:focus {
                background: darkslategray;
            }
            .login-form .checkbox-inline {
                float: left;
            }
            .login-form input[type="checkbox"] {
                margin-top: 2px;
            }

            .login-form .small {
                font-size: 13px;
            }
            .login-form a {
                color:rgb(0, 119, 255);
            }
            .logo h1{
                font-size:  23px;
                font-weight: revert;
                margin: auto;
            }
            .logo{
                width: auto;

            }
            nav{
                margin-top: -8px;
            }
        </style>
    </head>
    <body>
        <nav>
            <a href="#">
                <div class="logo">
                    <h1> EDU-HUB </h1> 
                    <img src="https://cdn4.vectorstock.com/i/1000x1000/36/03/open-book-vector-18443603.jpg" alt="bookimage" style="width: 31%;
                         height: 94%;
                         margin-left: 7%;">
                </div>
            </a>
            <ul id="navitems">
                <a href="index.jsp">
                    <li id="navitem"> HOME </li>
                </a>

                <a href="courses.html" id="inlineul">
                    <li  > COURSES  </li>
                </a>

                <a href="whyedu-hub.jsp">
                    <li > WHY EDU-HUB</li>
                </a>
                <a id="abhi_signup" href="signup.jsp">
                    <li > SIGN-UP </li>
                </a>

                <a href="#" id="loginbutton">
                    <li > LOGIN </li>
                </a>

                <a href="contactpage.html">
                    <li > CONTACT-US </li>
                </a>
            </ul>
        </nav>
        <div class="login-form">   

            <form  action="Loginservlet" method="POST">
                <div class="avatar"><i class="material-icons">&#xE7FF;</i></div>
                <h4 class="modal-title">Login to Your Account</h4>
                <%
                    Messages m = (Messages) session.getAttribute("msg");
                    if (m != null) {
                %>  
                <div class="alert alert-danger" role="alert">
                    Invalid username or password try again!
                    <%= m.getContent()%>
                </div>

                <%
                        session.removeAttribute("msg");
                    }
                %>
                <div class="form-group">
                    <input type="email" class="form-control"name="email" placeholder="Enter Email" required="required">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" name="password"placeholder="password" required="required">
                </div>
                <div class="form-group small clearfix">
                    <!-- <label class="checkbox-inline"><input type="checkbox"> Remember me</label> -->
                    <a href="forgotpass.jsp" class="forgot-link">Forgot Password?</a>
                </div> 
                <input type="submit" class="btn btn-primary btn-block btn-lg" value="Login">              
            </form>			
            <div class="text-center small">Don't have an account? <a href="signup.jsp">Sign up</a></div>
        </div>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>      
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    </body>
</html>                                		