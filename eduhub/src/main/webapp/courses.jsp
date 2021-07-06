<%@page import="com.eduhub.entities.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.eduhub.dao.PostDao"%>
<%@page import="com.eduhub.helper.ConnectionProvider"%>
<%@page import="com.eduhub.entities.User" %>
<%@page errorPage="error_page.jsp"%>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title> COURSES </title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Cabin&display=swap" rel="stylesheet">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@600&display=swap" rel="stylesheet">
        <link href="css/index_style.css" rel="stylesheet" type="text/css"/>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.js"></script>

        <style>
            .popup,
            .popup1,
            .popup2 {
                display: none;
                position: absolute;
                width: 80%;
                height: auto;
                z-index: 1;
                margin: 0% 11%;
                background: whitesmoke;
                box-shadow: 7px 45px 13em 14em grey;
                transition: all 3s;
            }

            .details {
                width: 98%;
                height: 32em;
                overflow-y: scroll;
                text-align: left;
                margin: auto;
                font-variant: discretionary-ligatures;
                font-family: system-ui;
                color: currentColor;
            }

            .cancelbtn :hover {
                color: darkgreen;
            }

            .Downbtn {
                margin: 44% 88%;
                display: inline-block;
                position: absolute;
                z-index: 2;
            }

            .downloadbtn {
                background-color: #0a980a;
                color: white;
                box-shadow: 5px 5px 7px grey;
            }

            .roadmp {
                border: 2px solid black;
                width: 85%;
                height: auto;
                margin: auto;

            }

            .firsthead {
                width: 86%;
                margin: auto;
                display: flex;
                align-items: center;
            }

            #rd_btn {
                border: 2px solid dimgray;
                margin-left: 60.5%;
                width: 12%;
                height: 58px;
                transition: all 0.5s;
                font-size: larger;
                font-family: inherit;
                background-color:lightgrey;
                color: darkslategrey;
            }

            #rd_btn:hover{
                background-color:aliceblue;
                color: darkslategrey;
            }

        </style>
    </head>

    <body>
        <div class="topback">
            <nav>
                <a href="#">
                    <div class="logo">
                        <h1 style="font-size: 1.4em;margin-top:inherit;font-weight:bolder"> EDU-HUB </h1>
                        <img src="https://cdn4.vectorstock.com/i/1000x1000/36/03/open-book-vector-18443603.jpg"
                             alt="bookimage" style="width: 31%;
                             height: 94%;
                             margin-left: 7%;">
                    </div>
                </a>
                <ul id="navitems">

                    <a href="index.jsp">
                        <li id="navitem"> HOME </li>
                    </a>

                    <a href="#" id="inlineul">
                        <li> COURSES </li>
                    </a>
                    <a href="profile.jsp">                                      
                        <li><span class="fas fa-user-graduate"></span><%= user.getName().toUpperCase()%> </li></a>
                    <a href="Logoutservlet">                        
                        <li><span class="fa fa-power-off"></span> LOGOUT </li>
                    </a>


                    <a href="contactpage.html">
                        <li> CONTACT-US </li>
                    </a>
                </ul>
            </nav>

            <!-- --------- POP UP PAGES  -->

            <div class="popup2">
                <a class="cancelbtn" href="#" onclick="myclose()" style="float: right;margin-right:1%;color:darkgrey">
                    <h2> X </h2>
                </a>

                <div class="Downbtn">
                    <button class="downloadbtn" onclick="download()"> DOWNLOAD </button>
                </div>

                <div class="updates">

                    <h2 style="color:darkslategray">
                        HCL UPDATED INFORMATION </h2>
                    <hr>

                    <div class="details" id="Tcs_template">
                        <h4 style="color:darkslategray">
                            HCL Recruitment for Freshers | HCL Recruitment Process
                        </h4>
                        <h5> About company </h5>
                        <p> HCL Technologies Limited is an Indian multinational IT services company, headquartered in Noida,
                            Uttar Pradesh, India. It is a subsidiary of HCL Enterprise. Originally a research and
                            development division of HCL, it emerged as an independent company in 1991 when HCL ventured into
                            the software services business. HCL Technologies ( Hindustan Computers Limited) offers services
                            in various fields including business process outsourcing (BPO), remote infrastructure
                            management, IT consulting, enterprise transformation, engineering, and R&D.
                            C Vijayakumar is the President and CEO of HCL Technologies,a US$ 7.8 billion global technology
                            company.In 2018, C Vijayakumar was ranked by CEO WORLD magazine as one of the "Best CEOs In The
                            World. </p>
                        <BR>
                        <h5> <b> HCL Recruitment - Job Roles Offered </b> </h5>
                        <p> The below table shows an average estimate of CTC and Job Roles. These aspects of HCL recruitment
                            for freshers can vary every year. For a more detailed information on HCL Recruitment Job Roles
                            and CTC Offered, contact your colleges placement cell.
                        </p>

                        <h6> <B> HCL Recruitment for Freshers - Eligibility Criteria </B></h6>
                        <h5> <b> Degrees: </b> </h5>
                        <p> There is a certain academic criterion for HCL Selection Process as a Fresher. Make sure you pass
                            these Eligibility Criteria before applying: <br> </p>
                        <h5> <b> Graduation Criteria : </b> </h5>
                        <p> 1. For HCL Recruitment Process, only full-time courses will be considered (any
                            part-time/correspondence courses will be rejected by HCL Recruitment moderators). <br>
                            2. The candidate applying for HCL Placement Process should be a B.E/B.Tech fresher preferably
                            from circuit branches - ECE, CSE, EEE, IT, Software.<br>
                            3. HCL recruitment process requires the students to have at least 60% in their Graduation. <br>
                            4. Students applying for HCL Recruitment should be 2017 or 2018 passouts.
                        </p>
                        <br>
                        <!-- PAGE BREAK  -->
                        <!-- PAGE BREAK  -->

                        <h3> Academic Criteria </h3>
                        <p> 1.HCL recruitment process requires the students to have at least 60% in their 10th, 12th and
                            Graduation. <br>
                            2. A maximum gap of 1 year is permissible after HSC(12th) and not after SSC(10th) or in between
                            semesters of graduation to sit for HCL Recruitment.:<br>
                            3. A candidate should not have any pending backlogs at the time of appearing for HCL selection
                            process. <br>
                        </p>
                        <br>

                        <h3> HCL Recruitment Process </h3>
                        <p> HCL Recruitment for Freshers is an extensive process consisting of 4 rounds. Remember that all
                            these rounds are very crucial for your success in HCL Recruitment. These rounds for HCL
                            Selection
                            Process are generally held within a span of 2 days but might vary for some colleges.Following
                            rounds take place in HCL Recruitment for Freshers: <br>
                        </p>
                        <p> 1. HCL Aptitude Test <br>
                            2. Group Discussion <br>
                            3. Technical interview <br>
                            3. HR interview <br>
                        </p>
                        <br>

                    </div>
                </div>
            </div>

            <div  class="popup1">
                <a class="cancelbtn" href="#" onclick="myclose()" style="float: right;margin-right:1%;color:darkgrey">
                    <h2> X </h2>
                </a>
                <div class="Downbtn">
                    <button class="downloadbtn" onclick="download()"> DOWNLOAD </button>
                </div>

                <div class="updates">

                    <h2 style="color:darkslategray">
                        INFOSYS UPDATED INFORMATION </h2>
                    <hr>

                    <div class="details" id="Tcs_template">
                        <h4 style="color:darkslategray">
                            Infosys Recruitment Pattern and Process for 2021 Pass-Outs
                        </h4>
                        <p> The recruitment for the 2021 pass-outs on-campus will be underway for the System Engineer role
                            (and the other roles too in select campuses).
                            Here is the eligibility criteria and info about the System Engineer role. </p>
                        <BR>
                        <h5> <b> Infosys typically hires for three different roles. </b> </h5>
                        <p> System Engineer - 3.5 LPA </p>
                        <p> System Engineer Specialist - 5.5 LPA</p>
                        <p> Power Programmer - 8 LPA </p>

                        <h6> <B> Infosys Recruitment Pattern - Eligibility criteria 2021 Pass-Outs </B></h6>
                        <h5> <b> Degrees: </b> </h5>
                        <p> 1. BE/ B Tech/ ME/ M Tech from all disciplines <br>
                            2. MCA and M Sc (Computer Science/ Electronics/ Mathematics/ Physics/Statistics<br>
                        </p> <br>
                        <h5> <b> Other key points: </b> </h5>
                        <p> 1. No active backlogs are allowed. <br>
                            2. Candidate should be willing to relocate to any location as required by Infosys.<br>
                            3. Candidate should be willing to work in different technologies as required by Infosys
                        </p>
                        <br>
                        <!-- PAGE BREAK  -->
                        <!-- PAGE BREAK  -->

                        <h3> Important Instructions for Candidates while Participating in the Infosys Recruitment Process
                        </h3>
                        <p> 1. The candidates must carry their original ID card along with them during the virtual interview
                            <br>
                            2. Simple average includes the marks obtained in all subjects/semesters/years including
                            electives, optional subjects, additional subjects, practical and languages. They require you to
                            calculate simple average marks as per the instructions below:<br>
                            3. To get Simple Average aggregate percentage for Class 10, Class 12, Graduation and
                            Post-graduation, including all languages electives, additional subjects, practical and optional
                            subjects. (Refer to the table below) <br>
                            4. If your college follows a CGPA system, please ensure that the CGPA is calculated taking into
                            account each course that you have undertaken in the curriculum, including optional or additional
                            subjects (if any). <br>
                            5. If you have done your Diploma after Class 10 and have joined directly as a lateral entrant
                            into the second year of B.E/B. Tech, please calculate the aggregate for three years of Diploma
                            including all languages, additional subjects, practical and optional subjects undertaken.
                            Calculate the aggregate for Engineering from the second year (third semester) onwards to the
                            final semester, as applicable. <br>
                            6. If your school follows a grade system, please enter the simple average of marks equivalent to
                            it.
                        </p>
                        <br>

                        <center> <img
                                src="https://lh5.googleusercontent.com/xGDx2-1Ngq3yMhK7OUT2I8CqB0G3OGTkcYTbVFowEpNOWLDf01kiWfyZsxwz2fVjpWZ2dK8di1ApZP4mexFFkN6UhYY3VuSQ1Hzv8xgq-gCRBQfvOCU09sp9f-vdzIlFdrWEr6IX"
                                alt="xx">
                        </center>

                    </div>
                </div>
            </div>


            <div class="popup">
                <a class="cancelbtn" href="#" onclick="myclose()" style="float: right;margin-right:1%;color:darkgrey">
                    <h2> X </h2>
                </a>
                </a>
                <div class="Downbtn">
                    <button class="downloadbtn" onclick="download()"> DOWNLOAD </button>
                </div>

                <div class="updates">

                    <h2 style="color:darkslategray">
                        TCS UPDATED INFORMATION </h2>
                    <hr>


                    <div class="details" id="Tcs_template">
                        <h4 style="color:darkslategray">
                            TCS Syllabus for freshers 2021
                        </h4>
                        <p> For people looking for TCS Syllabus 2021 for both On-Campus and Off-Campus Placements, this post
                            will answer all the questions for you. Trust India’s No.1 website for Placement Preparation and
                            the latest TCS Test Syllabus 2021, you can bookmark our website by pressing CTRL + D using any
                            browser. This article covers all the information about TCS Syllabus 2021. All the other websites
                            show you the old Syllabus for TCS.
                            we have the latest TCS Written Test Syllabus for 2021. </p>
                        <BR>
                        <h5> <b> IMPORTANT NOTE : </b> </h5>
                        <p> * There will be no negative marking. </p>
                        <p> * TCS NQT id adaptive this year</p>
                        <p> * You will not get any extra rough paper in the exam as a Calculator and Rough Paper will be
                            available on your Desktop Screen. You are not allowed to move your eyes down while giving the
                            examination. </p>

                        <h6> <B> TCS Syllabus change details : </B></h6>
                        <p> TCS Syllabus has changed just recently, following are the sections that are asked -</p>
                        <a href="#" style="color:green;">
                            <p> 1. Numerical Ability <br>
                                2. Verbal Ability <br>
                                3. Reasoning Ability <br>
                                4. Coding Ability
                            </p>
                        </a>

                        <!-- PAGE BREAK  -->
                        <!-- PAGE BREAK  -->

                        <p> Read More :- </p>
                        <a href="#" style="color:green;">
                            <p> TCS DETAILS PATTERN <br>
                                TCS ELIGIBILITY CRITERIA </p>
                        </a> <br>

                        <center> <img src="https://prepinsta.com/wp-content/uploads/2020/10/TCS-Syllabus-2021-2020.webp"
                                      alt="xx">
                        </center>
                        <BR> <br> <br>

                        <h3> TCS CAMPUS DRIVES 2021 </h3>
                        <h5> <b> IMPORTANT DATE : </b> </h5>

                        <p> Registration End Date : <b> 17 October 2021 </b> </p>
                        <p> National Qualifier Test (NQT) Dates: <b> 24, 25 and 26 October 2021 </b> </p>

                        <h3> <b> Registration and More Details </b> </h3>
                        <p> To register and for more details, <a href="#"> log in here </a> </p>

                    </div>
                </div>
            </div>

            <!-- --------- POP UP PAGES  -->
            <!-- <div style="display: none;
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
            </div> -->

            <!-- <div class="whyeduhub"> -->
            <!-- <h1 style="font-size: 3.2em;text-shadow: 0.2rem 0.3rem 0.8rem grey;"> BUILD A STRONG STUDY FOUNDATION </h1>
                <br>
                <strong style="font-size: 1.7em;"> Master the fundamentals and set yourself up for high school success.
                </strong> -->

            <br> <br> <br>

            <div class="firsthead">
                <h1 style="color:darkslategray;display: inline-block;"> TOP FREE COURSES </h1>
                <button value="ROADMAP" id="rd_btn"> <a href="Roadmap.html" style="color: darkslategray;"> ROADMAPS </a> </button>
            </div>
            <br> <br>
            <div class="container">

                <div class="row row-cols-1 row-cols-md-3 g-4">
                    <div class="col">
                        <div class="card">
                            <img src="https://images.hdqwalls.com/download/web-development-minimalism-bl-1600x900.jpg"
                                 class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title"> <a href="cour_template.html"> WEB DEVELOPMENT </a></h5>
                                <p class="card-text">Go from no-code to an in-demand junior web developer, at a fraction
                                    of the cost of a bootcamp. Start with the front-end by learning HTML, CSS, and
                                    JavaScript. Then, master the back-end and APIs to round out your full-stack skills.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://kanopy.com/cdn-cgi/image/fit=cover,height=900,width=1600/https://static-assets.kanopy.com/video-images/693171a4-412d-4f38-95bb-c1d3e1ca842d.jpg"
                                 class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title"> <a href="datastructure.html"> DATA STRUCTURE </a></h5>
                                <p class="card-text"> In this course, you will learn data structures and algorithms by
                                    solving 300+ practice problems. You will begin each course by learning to solve
                                    defined problems related to a particular data structure and algorithm.
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <img src="https://wallpaperforu.com/wp-content/uploads/2020/12/black-wallpaper-201219141449441600x900.jpg"
                                 class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title"> <a href="javacourse2.html"> JAVA </a> </h5>
                                <p class="card-text"> Take your first step towards a career in software development with
                                    this introduction to Java—one of the most in-demand programming languages and the
                                    foundation of the Android operating system. Designed for beginners.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div> <br> <br>

        <!-- </div> <BR> <BR>  -->

        <h1  style="margin-left:8%;color:darkslategray"> TOP IT COMPANIES IN INDIA AND THEIR LATEST UPDATES </h1> <br> <br>
        <div class="container">

            <div class="row row-cols-1 row-cols-md-3 g-4">
                <div class="col">
                    <div class="card">
                        <img src="https://aithority.com/wp-content/uploads/2018/08/tcs-1.jpg" class="card-img-top"
                             alt="...">
                        <div class="card-body">
                            <h5 class="card-title"> <a href="#" onclick="opentcs()"> TCS ( Tata consultancy services ) </a>
                            </h5>
                            <p class="card-text">Tata Consultancy service is the Largest IT company in India in terms of
                                Revenue.
                                TCS is an IT services, consulting and business solutions provider that has been partnering
                                with the world’s
                                largest businesses in their transformation journeys for the last fifty years..</p>
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card">
                        <img src="https://aithority.com/wp-content/uploads/2020/04/Infosys-CEO-93-Workforce-Engaged-from-Home-Focus-to-Deliver-Agile-Service-and-Achieve-Strong-Financial-Resilience-2.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"> <a href="#" onclick="openinfo()"> Infosys </a></h5>
                            <p class="card-text"> Established in 1981, Infosys is an NYSE listed global consulting and IT
                                services company with more than 228,000 employees. It is the second largest in the list of
                                top 10 IT companies in India 2020.
                                From a capital of US$ 250 to become a US$ 11.8 billion .
                        </div>
                    </div>
                </div>
                <div class="col">
                    <div class="card">
                        <img src="https://aithority.com/wp-content/uploads/2019/08/HCL-Technologies-and-Oracle-Health-Sciences-Collaborate-to-Accelerate-mHealth-in-Clinical-Trials.jpg"
                             class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"> <a href="#" onclick="openhcl()"> HCL Technologies </a> </h5>
                            <p class="card-text"> HCL Technologies is one of the best IT companies in India. The Company is
                                a leading global IT services company that helps global enterprises re-imagine and transform
                                their businesses through Digital technology transformation.
                                .</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br> <br> <BR> <br>


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
                    <input type="text" placeholder="Your Name" name="f_name"> <br>
                    <input type="email" placeholder="Your Email Address" name="f_email"> <br>
                    <input type="submit" value="SUBMIT">
                </form>
            </div>
        </div>


        <div class="foot" id="footers">
            <footer>
                <div class="righttext" style="margin-left: 32%;">
                    <caption>
                        © 2021 EDU-HUB <br>
                        All rights reserved <br> <br>
                        610 Murray Street, INDORE <br>
                        P (08) 6115 0025 <br> <br>
                        Privacy Policy Terms of use <br>
                    </caption>
                </div>
                <div class="righttext" id="sociallink" style="margin-left: 8%;flex-direction:column">
                    <a href="#"> <img src="https://www.peak.edu.au/pwp/wp-content/themes/peak/images/instagram.svg"
                                      alt="instalogo"> </a> <br>
                    <a href="#"> <img src="https://www.peak.edu.au/pwp/wp-content/themes/peak/images/fb.svg"
                                      alt="instalogo"> </a>
                </div>

                <div class="righttext" id="sociallink" style="margin-left: 10%; flex-direction:column;">
                    <a href="#">
                        <h1 style="color: darkslategrey;"> EDU-HUB </h1>
                        <img src="https://cdn4.vectorstock.com/i/1000x1000/36/03/open-book-vector-18443603.jpg"
                             alt="bookimage" width="62%">
                    </a>
                </div>
            </footer>
        </div>
    </div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
    crossorigin="anonymous"></script>

    <script type="text/javascript">

                            const clos = document.querySelector(".popup");
                            const clos1 = document.querySelector(".popup1");
                            const clos2 = document.querySelector(".popup2");
                            var x = document.getElementsByTagName("BODY")[0];

                            function myclose() {
                                clos.style.display = "none";
                                clos1.style.display = "none";
                                clos2.style.display = "none";
                                x.style.overflowY = "block";
                            }

                            function opentcs() {
                                clos.style.display = "block";
                                x.style.overflowY = "hidden";
                            }

                            function openinfo() {
                                clos1.style.display = "block";
                                x.style.overflowY = "hidden";
                            }

                            function openhcl() {
                                clos2.style.display = "block";
                                x.style.overflowY = "hidden";
                            }

                            function download() {
                                const temp = document.getElementById("Tcs_template");
                                var opt = {
                                    margin: 1,
                                    filename: 'tcsinfo',
                                    image: {type: 'jpeg', quality: 0.98},
                                    html2canvas: {scale: 2},
                                    jsPDF: {unit: 'in', format: 'letter', orientation: 'portrait'}
                                }

                                console.log(temp);
                                //console.log(window);
                                html2pdf().from(temp).set(opt).save();
                            }

    </script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>      
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>  
       
    <script src="JSfiles/index.js"></script>

</body>

</html>