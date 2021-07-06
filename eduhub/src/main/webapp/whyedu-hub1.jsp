<%@page import="com.eduhub.entities.User" %>
<%@page errorPage="error_page.jsp"%>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> WHY EDU-HUB </title>
        <link href="css/index_style.css" rel="stylesheet" type="text/css"/>
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Cabin&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com">
         <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">-->
        
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@600&display=swap" rel="stylesheet">
        <link href="css/why-eduhub.css" rel="stylesheet" type="text/css"/>
    </head>

    <body>
        <div class="topback">
            <nav>
                <a href="#">
                    <div class="logo">
                        <h1 style="height: 10px"> EDU-HUB </h1> 
                        <img src="https://cdn4.vectorstock.com/i/1000x1000/36/03/open-book-vector-18443603.jpg" alt="bookimage" style="width: 31%;
                             height: 94%;
                             margin-left: 7%;">
                    </div>
                </a>
                <ul id="navitems">
                    <a href="home1.jsp">
                        <li id="navitem"> HOME </li>
                    </a>

                    <a href="#courses" id="inlineul">
                        <li  > COURSES  </li>
                    </a>

                    <a href="whyedu-hub1.jsp">
                        <li > WHY EDU-HUB</li>
                    </a>
                    <a href="profile.jsp">                                          
                    <li><span class="fas fa-user-graduate"></span><%= user.getName().toUpperCase()%> </li></a>
                    <a href="Logoutservlet">                        
                    <li ><span class="fa fa-power-off"></span> LOGOUT </li>
                </a>

                    <a href="contactpage.html">
                        <li > CONTACT-US </li>
                    </a>
                </ul>
            </nav>
            <div style="display: none;
                 margin-left: 57%;" id="courseli">
                <ul>
                    <a href="#">
                        <li> SHORT TERM COURSES </li> <br>
                    </a>
                    <a href="#">
                        <li> HOLIDAY </li> <br>
                    </a>
                    <a href="#">
                        <li> EXAM </li>
                    </a>
                </ul>
            </div>

            <div class="whyeduhub">
                <h1 style="font-size: 3.2em;text-shadow: 0.2rem 0.3rem 0.8rem grey;"> WHY EDU-HUB </h1> <br>
                <strong style="font-size: 1.7em;"> Our unique philosophy, principles, pro-active learning system and team
                    values
                    are fundamental in delivering exceptional academic success for our students. </strong>
            </div>

        </div>

        <div style="margin:auto;width:fit-content;font-family: 'Josefin Sans', sans-serif;
             font-size: 1.5rem;
             color: darkslategrey;"> 
            <h1> THE EDU-HUB ADVANTAGE </h1>
        </div>
        <br> <br>
        <div class="eduadvantage">
            <div class="outerboxes">
                <div class="innerbox" style="background:url('https://www.peak.edu.au/pwp/wp-content/uploads/2019/11/icon-team-course.svg') no-repeat;
                     background-size:100%"> </div>
                <center> <br>  <strong style="font-weight: 300;">  Passionate Teachers  </strong>
                    <p style="text-align:center;font-size:1em;width:65%;" ;> Passionate teachers who are great communicators.
                        Subject-matter experts who really care for you and can explain tricky concepts clearly.</p>
                </center>
            </div>

            <div class="outerboxes">
                <div class="innerbox" style="background:url('https://www.peak.edu.au/pwp/wp-content/uploads/2019/12/icon-support.svg') no-repeat;
                     background-size:100%"> </div>
                <center> <br> <strong> Supportive Tutors </strong>
                    <p style="text-align:center;font-size:1em;width: 65%;" ;> Engaging tutors who are knowledgeable and friendly. Ready to help you bridge gaps in knowledge or boost understanding.</p>
                </center>
            </div>


            <div class="outerboxes">
                <div class="innerbox" style="background:url('https://www.peak.edu.au/pwp/wp-content/uploads/2019/11/icon-holiday-course.svg') no-repeat;
                     background-size:100%"> </div>
                <center> <br> <strong> Inspirational Coaches </strong>
                    <p style="text-align:center;font-size:1em;width: 65%;" ;> 
                        Inspiring coaches who can help you take lead of your studies and achieve your academic goals.
                    </p>
                </center>
            </div>

            <div class="outerboxes">
                <div class="innerbox" style="background:url('https://www.peak.edu.au/pwp/wp-content/uploads/2019/12/routine-icon-1.svg') no-repeat;
                     background-size:100%"> </div>
                <center>  <br> <strong> Proactive Learning </strong>
                    <p style="text-align:center;font-size:1em;width: 65%;" ;> Proactive learning advances you ahead of the WA school curriculum. Ensuring your always in control of your learning.</p>
                </center>
            </div>

            <div class="outerboxes">
                <div class="innerbox" style="background:url('https://www.peak.edu.au/pwp/wp-content/uploads/2019/12/routine-icon-4.svg') no-repeat;
                     background-size:100%"> </div>
                <center> <br> <strong> Structured Resources </strong>
                    <p style="text-align:center;font-size:1em;width: 65%;" ;> Carefully designed resources are structured to help you translate knowledge into academic success.</p>
                </center>
            </div>

            <div class="outerboxes">
                <div class="innerbox" style="background:url('https://www.peak.edu.au/pwp/wp-content/uploads/2019/12/routine-icon-6.svg') no-repeat;
                     background-size:100%"> </div>
                <center> <br> <strong> Regular Feedback </strong>
                    <p style="text-align:center;font-size:1em;width: 65%;" ;> Feedback is provided to students and parents on a regular basis to ensure you reach peak performance.</p>
                </center>
            </div>
            <div class="outerboxes">
                <div class="innerbox" style="background:url('https://www.peak.edu.au/pwp/wp-content/uploads/2019/12/icon-community.svg') no-repeat;
                     background-size:100%"> </div>
                <center>  <br> <strong> Learning Community </strong>
                    <p style="text-align:center;font-size:1em;width: 65%;" ;>Courses are delivered in a relaxed, energised and welcoming learning environment. We make learning fun.</p>
                </center>
            </div>

            <div class="outerboxes">
                <div class="innerbox" style="background:url('https://www.peak.edu.au/pwp/wp-content/uploads/2019/12/routine-icon-3.svg') no-repeat;
                     background-size:100%"> </div>
                <center> <br>  <strong> WACE Specialisation </strong>
                    <p style="text-align:center;font-size:1em;width: 65%;" ;> 
                        Our educators specialise in the WA curriculum. We address every WACE checkpoint to a full marks standard.
                    </p>
                </center>
            </div>
            <div class="outerboxes">
                <div class="innerbox" style="background:url('https://www.peak.edu.au/pwp/wp-content/uploads/2019/12/routine-icon-2.svg') no-repeat;
                     background-size:100%"> </div>
                <center> <br> <strong> Results </strong>
                    <p style="text-align:center;font-size:1em;width: 65%";>  Student performance, is our performance. We closely monitor student progress and provided additional support as needed.</p>
                </center>
            </div>
        </div>

        <div class="midquote">

            <div id="medquo">
                <h1> STUDENTS ARE THE CENTER OF UNIVERSE </h1> 
            </div>
        </div>


        <div class="fillup" style="padding:3%;height:auto;margin-top:5%">
            <div class="contain"> 
                <div id="arrow">
                    <h1> ACHIEVE PEAK PERFORMANCE</h1> <br>
                    <caption> Stay in touch with our latest course updates !</caption>        
                </div>
            </div>
            <div class='contain' id="fillupform">
                <form action="#" method="POST">
                    <input type="text" placeholder="Your Name" name="f_name" > <br>
                    <input type="email" placeholder="Your Email Address" name="f_email" > <br>
                    <input type="submit" value="SUBMIT">
                </form>
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




        <script src="JSfiles/index.js"></script>

    </body>

</html>