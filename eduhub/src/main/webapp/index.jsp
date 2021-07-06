<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.eduhub.entities.Messages" %>
<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> EDU-HUB </title>
<!--        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">-->
        <link href="css/index_style.css" rel="stylesheet" type="text/css"/>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Cabin&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@600&display=swap" rel="stylesheet">
        <link href="css/pop_window.css" rel="stylesheet" type="text/css"/>

    </head>

    <body>
        <div class="topback">
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

                    <a onclick="mylogin()"id="loginbutton">
                        <li > LOGIN </li>
                    </a>

                    <a href="contactpage.html">
                        <li > CONTACT-US </li>
                    </a>
                </ul>
            </nav>
<!--            <div style="display: none;
                 margin-left: 57%;" id="courseli">
                <ul >
                    <a href="#"> <li> SHORT TERM COURSES </li> <br> </a>
                    <a href="#"> <li> HOLIDAY </li> <br> </a>
                    <a href="#"> <li> EXAM </li> </a>
                </ul>
            </div>-->
            <div class="firstQuote">
                <h1>
                    EDUCATION <br>
                    IS FOR IMPROVING <br>
                    THE LIVES OF OTHER
                </h1>
            </div>
        </div>
        <div class="container-1">
            <h1> We’ll help you take control of your studies and achieve your carrier goals. </h1>
            <div class="incontain-1"> </div>
        </div>

        <br> <br>

        <h1 id="courses" style="font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif ;font-size: 2.5rem;color: darkslategrey;margin:1.2em"> OUR SITE OFFERING </h1>
        <div class="first" 
             style="clip-path:polygon(0% 0%, 75% 0%, 100% 50%, 75% 100%, 0% 100%);height:fit-content;
             background:url('https://images.unsplash.com/photo-1533628635777-112b2239b1c7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTB8fHdodGllJTIwYmFja2dyb3VuZHxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60' )">
            <div class="offercourses" >
                <div class="coursebox" id="cor1">
                    <a href="courses.html" class="courselink"> Courses & Updates </a>
                </div>
                <div class="coursebox" id="cor2">  
                    <a href="Roadmap.html"  class="courselink">learning guide</a>
                </div>
                <div class="coursebox " id="cor3"> 
                    <a href="profile.jsp"  class="courselink">Create Blogs</a>
                </div>
            </div>
        </div>

        <div style="margin-top:6rem;margin-left:15rem;width:fit-content;font-family: 'Josefin Sans', sans-serif;
             font-size: 1.5rem;
             color: darkslategrey;">
            <h1> HOW WE HELP STUDENTS TO REACH THE PEAK . </h1>
        </div>

        <div class="container-2">
            <div class="textcont image1 img"> </div>

            <div class="textcont content">
                <div style="width: fit-content;">
                    <h1> Proactive learning </h1>
                    <caption> No more playing catch-up.
                        Learn one-step ah ead of the WA school curriculum in a way that’s structured,
                        simplified and easy to understand. </caption>
                </div>
            </div>

            <div class="textcont content">
                <div>
                    <h1> Passionate learners </h1>
                    <caption> Be inspired by approachable teachers who get it,
                        and get you Engage in well structured learning courses that have been designed with you, for you.
                    </caption>
                </div>
            </div>

            <div class="textcont image2 img"></div>

            <div class="textcont image3 img"> </div>

            <div class="textcont content">
                <div style="width: fit-content;">
                    <h1> Supportive Community </h1>
                    <caption> Turn weaknesses into strengths with supportive Community who get where you’re coming from,
                        but can help you get wherever you want to be.</caption>
                </div>
            </div>
        </div>


        <div class="foot" id="footers">
            <footer>
                <div class="righttext" style="margin-left: 32%;">
                    <caption >
                        © 2021 EDU-HUB <br>
                        All rights reserved  <br> <br> 
                        610 Murray Street, INDORE <br>
                        P (08) 6115 0025 <br> <br>
                        Privacy Policy Terms of use <br>
                    </caption>
                </div>
                <div class="righttext" id="sociallink" style="margin-left: 8%;flex-direction:column" >
                    <a href="#" > <img src="https://www.peak.edu.au/pwp/wp-content/themes/peak/images/instagram.svg" alt="instalogo">  </a> <br>
                    <a href="#" > <img src="https://www.peak.edu.au/pwp/wp-content/themes/peak/images/fb.svg" alt="instalogo">  </a>
                </div>

                <div class="righttext" id="sociallink" style="margin-left: 10%; flex-direction:column;" >
                    <a href="#">    <h1 style="color: darkslategrey;"> EDU-HUB </h1>
                        <img src="https://cdn4.vectorstock.com/i/1000x1000/36/03/open-book-vector-18443603.jpg" alt="bookimage" width="62%">
                    </a>
                </div>
            </footer>
        </div>

        <div class="background-popup">
            <div class="modal-contents">
                <form class="login-form" action="Loginservlet" method="POST">
                    <div onclick="loginclose()"class="close">+</div>  
                    <img class="login-img" src="images/loginimage.png">
                    <%
                        Messages m = (Messages)session.getAttribute("msg");
                        if (m != null) {
                    %>  
                    <div class="alert alert-danger" role="alert">
                        Invalid Credintials
                    </div>
                    <%= m.getContent()%>
                    <%
                            session.removeAttribute("msg");
                        }
                    %>

                    <input  name="email" type="email" placeholder="E-Mail" required>
                    <input name="password" type="password" placeholder="Password"  required>
                    <div class="forgot"> <a href="forgotpass.jsp">Forgot Password</a></div>
                    <button type="submit" class="button">Submit</button>
                    <p> don't have an account        <a href="signup.jsp">Sign-up</a></p>


                </form>
            </div>
        </div>
        
        <script src="javascript/index.js" type="text/javascript"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>      
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <script>document.querySelector('.background-popup').style.display = "none";</script>
        <script>

            function mylogin() {
                //  let clicked = document.getElementById('loginbutton');
                document.querySelector('.background-popup').style.display = "flex";
            }

            function loginclose() {
                //let closenow =  document.querySelector('.close')
                document.querySelector('.background-popup').style.display = "none";
            }

            


        </script>
    </body>

</html>

