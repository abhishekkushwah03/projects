<%-- 
    Document   : cour_template
    Created on : 03-May-2021, 4:05:34 pm
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> WEB DEVELOPMENT </title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
    <link rel="stylesheet" href="CSSFiles//index_style.css">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Cabin&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@600&display=swap" rel="stylesheet">
    <link href="css/cour_temp.css" rel="stylesheet" type="text/css"/>
    <link href="css/course_content.css" rel="stylesheet" type="text/css"/>
    <link href="css/index_style.css" rel="stylesheet" type="text/css"/>
</head>

<body>

    <nav style="font-size:small">
        <a href="#">
            <div class="logo">
                <h1 style="font-size: 1.4em;margin-top:inherit;font-weight:bolder"> EDU-HUB </h1>
                <img src="https://cdn4.vectorstock.com/i/1000x1000/36/03/open-book-vector-18443603.jpg" alt="bookimage"
                    style="width: 31%;
                height: 94%;
                margin-left: 7%;">
            </div>
        </a>
        <ul id="navitems" style="display:flex;justify-content:center;align-items:center" id="flex">
            <marquee behavior="smooth" direction="left">
                <h3 style="font-family: 'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;"> <sup>
                        <strong style="color:coral;"> New </strong> </sup> Courses coming soon </h3>
            </marquee>
        </ul>
    </nav>

    <div class="tabs">
        <a href="index.html" style="margin: 1%;">
            <div class="tablinks"> <img
                    src="https://i.pinimg.com/originals/da/e0/92/dae092a545e4c09714ee9842ab15dc10.jpg" alt="iconhome"
                    width="30px" height="30px"> </div>
        </a>
        <a href="#" style="margin: 1%;">
            <div class="tablinks"> HTML </div>
        </a>
        <a href="#" style="margin: 1%;">
            <div class="tablinks"> CSS </div>
        </a>
        <a href="#" style="margin: 1%;">
            <div class="tablinks"> JAVASCRIPT </div>
        </a>
        <a href="#" style="margin: 1%;">
            <div class="tablinks"> JQUERY </div>
        </a>
        <a href="#" style="margin: 1%;">
            <div class="tablinks"> PYTHON </div>
        </a>
        <a href="#" style="margin: 1%;">
            <div class="tablinks"> JAVA </div>
        </a>
        <a href="#" style="margin:1%">
            <div class="tablinks">
                <select class="form-select" aria-label="Disabled select example">
                    <option selected> REFERENCE </option>
                    <option value="1">  Code With Harry </option>
                    <option value="2"> W3 School </option>
                    <option value="3"> Coursera </option>
                </select>
            </div>
        </a>
        <a href="courses.html" style="margin: 1%;">
            <div class="tablinks"> COURSES </div>
        </a>
    </div>

    <div class="course_contain">

        <div class="sidebar">
            <div class="in_sidebar" id="head" style="text-align:center;font-variant: petite-caps">
                <h3> Web Development </h3>
            </div>

            <div class="alllinks" style="overflow-y:scroll;height:100vh">
                <a href="#">
                    <div class="links" id="page1" style="margin-top:7%;height:29px"> What is Roadmap </div>
                </a>
                <a href="#">
                    <div class="links" id="page2"> What is HTTP </div>
                </a>
                <a href="#">
                    <div class="links" id="page3"> What is HTML </div>
                </a>
                <a href="#">
                    <div class="links" id="page4"> What is CSS </div>
                </a>
                <a href="#">
                    <div class="links" id="page5"> What is Responsive </div>
                </a>
                <a href="#">
                    <div class="links" id="page6"> What is Javascript </div>
                </a>
                <a href="#">
                    <div class="links" id="page7"> What is ES5 </div>
                </a>
                <a href="#">
                    <div class="links" id="page8"> What is HTML DOM </div>
                </a>
                <a href="#">
                    <div class="links" id="page9"> What is Google Fonts </div>
                </a>
                <a href="#">
                    <div class="links" id="page10"> What is Google Charts </div>
                </a>
                <a href="#">
                    <div class="links" id="page11"> What is XML </div>
                </a>
                <a href="#">
                    <div class="links" id="page12"> What is AJAX </div>
                </a>
                <a href="#">
                    <div class="links" id="page13"> What is JSON </div>
                </a>
                <a href="#">
                    <div class="links" id="page14"> What is CSS Icons </div>
                </a>
                <a href="#">
                    <div class="links" id="page15"> What is Bootstrap </div>
                </a>
                <a href="#">
                    <div class="links" id="page16"> What is CLI </div>
                </a>
                <a href="#">
                    <div class="links" id="page17"> What is npm </div>
                </a>
                <a href="#">
                    <div class="links" id="page18"> What is Github </div>
                </a>
                <a href="#">
                    <div class="links" id="page19"> What is JQuery </div>
                </a>
                <a href="#">
                    <div class="links" id="page20"> What is Angular JS </div>
                </a>
                <a href="#">
                    <div class="links" id="page21"> What is React </div>
                </a>
                <a href="#">
                    <div class="links" id="page22"> What is Vue.js </div>
                </a>
                <a href="#">
                    <div class="links" id="page23"> What is FullStack.js </div>
                </a>
                <a href="#">
                    <div class="links" id="page24"> What is SQL </div>
                </a>
                <a href="#">
                    <div class="links" id="page24"> What is SQL </div>
                </a>
                <a href="#">
                    <div class="links" id="page24"> What is SQL </div>
                </a>
                <a href="#">
                    <div class="links" id="page24"> What is SQL </div>
                </a>
                <a href="#">
                    <div class="links" id="page24"> What is SQL </div>
                </a>
                <a href="#">
                    <div class="links" id="page24"> What is SQL </div>
                </a>
                <a href="#">
                    <div class="links" id="page24"> What is SQL </div>
                </a>
            </div>

        </div>
        <div class="pages" style="color: white">

            <div class="course" id="page6" style="background-color:cyan;">
                <h1> PAGE 6 </h1>
                <!-- Write your code below  -->
            </div>

            <div class="course" id="page5" style="background-color:cyan;">
                <h1> PAGE 5 </h1>
                <!-- Write your code below  -->
            </div>

            <div class="course" id="page4" style="background-color:violet;">
                <h1> PAGE 4 </h1>
                <!-- Write your code below -->
            </div>

            <!--  --------------------------------------------------------------------------------------   -->
            <div class="course" id="page3" style="background-color:white;color:black;">
                <div class="title" style="height:10em;border-bottom:2px solid grey">
                    <center>
                        <h1> What Is HTML ? </h1>
                    </center> <br>
                    <a href="#"> <button type="button" class="btn btn-success" style="float: left;margin-left:2%">
                            PREVIOUS </button> </a>
                    <a href="#"> <button type="button" class="btn btn-success" style="float: right;margin-right:2%">
                            NEXT </button> </a>
                </div>

                
            </div>
            <!--  --------------------------------------------------------------------------------------   -->

            <div class="course" id="page2" style="background-color:white;color:black">

                <!-- HEADING  -->
                <div class="title" style="height:10em;border-bottom:2px solid grey">
                    <center>
                        <h1> What Is HTTP ? </h1>
                    </center> <br>
                    <a href="#"> <button type="button" class="btn btn-success" style="float: left;margin-left:2%">
                            PREVIOUS </button> </a>
                    <a href="#"> <button type="button" class="btn btn-success" style="float: right;margin-right:2%">
                            NEXT </button> </a>
                </div>
                <!-- HEADING  -->

                <div class="content">

                    <br>
                    <b>
                        <h2 style="margin: 0% 3%;"> World Wide Web Communication </h2>
                    </b>
                    <br>
                    <div class="step" id="step1" style="background-color:#3e665f;">
                        <br>
                        <div class="stepboxes" id="box1">

                            <p> The World Wide Web is about communication between web <b> clients </b> and <b> web
                                    servers.</b> </p>

                            <p> <b> Clients </b> are often browsers (Chrome, Edge, Safari), but they can be any type of
                                program or device. </p>

                            <p> <b> Servers </b> are most often computers in the cloud. </p>
                        </div>
                    </div>
                    <div
                        style="
                height: 44em;
                width: 77%;
                margin: auto;
                background: url('https://blog.nus.edu.sg/3217w6/files/2019/03/OverallorganizationoftheWeb.-1no5ruo.jpg') no-repeat 100%;                    ">
                    </div>

                    <br>
                    <b>
                        <h2 style="margin: 0% 3%;"> HTTP Request / Response </h2>
                    </b>

                    <div class="step" id="step1" style="background-color:#3e665f;">
                        <p style="margin: 0% 1%;color:white"> Communication between clients and servers is done by <b>
                                requests </b> and <b> responses </b>:</p>
                        <div class="stepboxes" id="box1">

                            <p>1. A client (a browser) sends an HTTP request to the web <br>
                                2. A web server receives the request <br>
                                3. The server runs an application to process the request <br>
                                4. The server returns an HTTP response (output) to the browser <br>
                                5. The client (the browser) receives the response <br> </p>
                        </div>
                    </div> <br>

                    <b>
                        <h2 style="margin: 0% 3%;"> The HTTP Request Circle </h2>
                    </b>

                    <div class="step" id="step1" style="background-color:#3e665f;">
                        <p style="margin: 0% 1%;color:white"> A typical HTTP request / response circle: </p>
                        <div class="stepboxes" id="box1">

                            <p>1. The browser requests an HTML page. The server returns an HTML file. <br>
                                2. The browser requests a style sheet. The server returns a CSS file.
                                <br>
                                3. The browser requests an JPG image. The server returns a JPG file. <br>
                                4. The browser requests JavaScript code. The server returns a JS file <br>
                                5. The browser requests data. The server returns data (in XML or JSON). <br>
                            </p>
                        </div>
                    </div>

                    <b>
                        <h2 style="margin: 0% 3%;"> XHR - XML Http Request </h2>
                    </b>

                    <div class="step" id="step1" style="background-color:#3e665f;">
                        <div class="stepboxes" id="box1">

                            <p> All browsers have a built-in <b> XMLHttpRequest Object (XHR) </b>. </p>

                            <p> XHR is a JavaScript object that is used to transfer data between a web browser and a web
                                server. </p>

                            <p> XHR is often used to request and receive data for the purpose of modifying a web page.
                            </p>

                            <p> Despite the XML and Http in the name, XHR is used with other protocols than HTTP, and
                                the data can be of many different types like HTML, CSS, XML, JSON, and plain text.</p>

                            <p>
                                The XHR Object is a Web Developers Dream, because you can:
                            </p>
                            <p>1. Update a web page without reloading the page <br>
                                2. Request data from a server - after the page has loaded
                                <br>
                                3. Receive data from a server - after the page has loaded <br>
                                4. Send data to a server - in the background <br> <br>
                                The XHR Object is the underlying concept of <b> AJAX </b> and <b> JSON </b>:
                            </p>
                        </div>
                    </div>
                    <div style="
                height: 24em;
                width: 56%;
                background: url('https://www.w3schools.com/whatis/img_ajax.gif') no-repeat 100%;">
                    </div>

                    <div class="title" style="margin-top:5%;">
                        <a href="#"> <button type="button" class="btn btn-success" style="float: left;margin-left:2%">
                                HOME </button> </a>
                        <a href="#"> <button type="button" class="btn btn-success" style="float: right;margin-right:2%">
                                NEXT </button> </a>
                    </div>

                </div>
            </div>

            <div class="course" id="page1" style="background-color:white;color:black">

                <div class="title" style="height:10em;border-bottom:2px solid grey">
                    <center>
                        <h1> Web Development Roadmap </h1>
                    </center> <br>
                    <a href="#"> <button type="button" class="btn btn-success" style="float: left;margin-left:2%">
                            HOME </button> </a>
                    <a href="#"> <button type="button" class="btn btn-success" style="float: right;margin-right:2%">
                            NEXT </button> </a>
                </div>

                <div class="content">

                    <center>
                        <h1> Front-End Roadmap </h1>
                    </center> <br>

                    <div class="step" id="step1" style="background-color:#3e665f;">
                        <br>
                        <center>
                            <h1> Step 1 </h1>
                        </center>
                        <center>
                            <h1> Learn the basics </h1>
                        </center> <br>
                        <div class="stepboxes" id="box1">

                            <p> Every Web Developer must have a basic understanding of HTML, CSS, and JavaScript. </p>

                            <p> Responsive Web Design is used in all types of modern web development. </p>

                            <p> ECMAScript 5 (JavaScript 5) is supported in all modern browsers. Take a good look at it,
                                especially the new array functions.
                            </p>

                        </div>

                        <div class="stepboxes2" id="box2">
                            <h1 style="border-bottom:2px solid black"> HTML</h1> <br>
                            <div class="steplinks">
                                <a href="#">
                                    <div id="link1" style="height:2em;cursor:pointer"> HTML </div>
                                </a>
                                <a href="#">
                                    <div id="link2" style="height:2em;cursor:pointer"> HTTP/XHR </div>
                                </a>
                            </div>
                        </div>

                        <div class="stepboxes2" id="box3">

                            <h1 style="border-bottom:2px solid black"> CSS </h1> <br>
                            <div class="steplinks">
                                <a href="">
                                    <div id="link1" style="height:2em;cursor:pointer"> CSS </div>
                                </a>
                                <a href="">
                                    <div id="link2" style="height:2em;cursor:pointer"> CSS RESPONSIVE </div>
                                </a>
                            </div>

                        </div>
                        <div class="stepboxes2" id="box4">

                            <h1 style="border-bottom:2px solid black"> JAVASCRIPT </h1> <br>
                            <div class="steplinks">
                                <a href="#">
                                    <div id="link1" style="height:2em;cursor:pointer"> JAVASCRIPT </div>
                                </a>
                                <a href="#">
                                    <div id="link2" style="height:2em;cursor:pointer"> ECMASCRIPT 5 </div>
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="step" id="step2" style="background-color:#3e665f;">
                        <br>
                        <center>
                            <h1> Step 2 </h1>
                        </center>
                        <center>
                            <h1> Dig Deeper </h1>
                        </center> <br>
                        <div class="stepboxes" id="box1">

                            <p> When you feel comfortable with HTML and CSS, it is time to dig deeper. </p>

                            <p> You should learn how to use Maps, Fonts and Icons in HTML. </p>

                            <p> On the JavaScript side, you should learn how to access the HTML DOM</p>

                            <p> You should also learn how to use AJAX and JSON for making server requests.</p>

                        </div>

                        <div class="stepboxes2" id="box2">
                            <h1 style="border-bottom:2px solid black"> HTML</h1> <br>
                            <div class="steplinks">
                                <a href="#">
                                    <div id="link1" style="height:2em;cursor:pointer"> HTML DOM </div>
                                </a>
                                <a href="#">
                                    <div id="link2" style="height:2em;cursor:pointer"> GOOGLE MAPS </div>
                                </a>
                                <a href="#">
                                    <div id="link2" style="height:2em;cursor:pointer"> GOOGLE FONTS </div>
                                </a>
                                <a href="#">
                                    <div id="link2" style="height:2em;cursor:pointer"> GOOGLE CHARTS </div>
                                </a>
                            </div>
                        </div>

                        <div class="stepboxes2" id="box3">

                            <h1 style="border-bottom:2px solid black"> CSS </h1> <br>
                            <div class="steplinks">
                                <a href="">
                                    <div id="link1" style="height:2em;cursor:pointer"> CSS ICONS </div>
                                </a>
                            </div>

                        </div>
                        <div class="stepboxes2" id="box4">

                            <h1 style="border-bottom:2px solid black"> JAVASCRIPT </h1> <br>
                            <div class="steplinks">
                                <a href="#">
                                    <div id="link1" style="height:2em;cursor:pointer"> XML </div>
                                </a>
                                <a href="#">
                                    <div id="link2" style="height:2em;cursor:pointer"> JSON </div>
                                </a>
                                <a href="#">
                                    <div id="link1" style="height:2em;cursor:pointer"> AJAX </div>
                                </a>
                            </div>

                        </div>
                    </div>

                    <div class="step" id="step3" style="background-color:#3e665f;">

                        <br>
                        <center>
                            <h1> Step 3 </h1>
                        </center>
                        <center>
                            <h1> Choose Frameworks </h1>
                        </center> <br>
                        <div class="stepboxes" id="box1">

                            <p> Now it is time to look at some Frameworks. </p>

                            <p> On the CSS side you should choose a framework for reponsive web design: <br>
                                Bootstrap / Material Design / W3.CSS </p>

                            <p> On the JavaScript side you should learn at least one modern framework: <br>
                                React.js / Angular.js / Vue.js / W3.JS
                            </p>

                            <p> Maybe the popularity of jQuery has passed the top, but it is still the most used
                                JavaScript framework.</p>

                        </div>

                        <div class="stepboxes2" id="box2">
                            <h1 style="border-bottom:2px solid black"> CSS </h1> <br>
                            <div class="steplinks">
                                <a href="#">
                                    <div id="link1" style="height:2em;cursor:pointer"> BOOTSTRAP </div>
                                </a>
                                <a href="#">
                                    <div id="link2" style="height:2em;cursor:pointer"> EDU.CSS </div>
                                </a>
                            </div>
                        </div>

                        <div class="stepboxes2" id="box3">

                            <h1 style="border-bottom:2px solid black"> JAVASCRIPT </h1> <br>
                            <div class="steplinks">
                                <a href="">
                                    <div id="link1" style="height:2em;cursor:pointer"> jQuery </div>
                                </a>
                                <a href="">
                                    <div id="link2" style="height:2em;cursor:pointer"> AngularJS </div>
                                </a>
                                <a href="">
                                    <div id="link2" style="height:2em;cursor:pointer"> Vue.js </div>
                                </a>
                            </div>

                        </div>
                        <div class="stepboxes2" id="box4">

                            <h1 style="border-bottom:2px solid black"> XML </h1> <br>
                            <div class="steplinks">
                                <a href="#">
                                    <div id="link1" style="height:2em;cursor:pointer"> XSLT </div>
                                </a>
                                <a href="#">
                                    <div id="link2" style="height:2em;cursor:pointer"> XPATH </div>
                                </a>
                                <a href="#">
                                    <div id="link2" style="height:2em;cursor:pointer"> XQuery </div>
                                </a>
                            </div>

                        </div>
                    </div>

                    <div style="
                        height: 74em;
                        width:96%;
                        margin: 2%;
                        background: url('https://www.w3schools.com/whatis/img_frontend.jpg') no-repeat 100%;
                    ">

                    </div>

                    <center>
                        <h1> Back-End Roadmap </h1>
                    </center> <br>

                    <div class="step" id="step4" style="background-color:#3e665f;">
                        <br>
                        <center>
                            <h1> Step 4 </h1>
                        </center>
                        <center>
                            <h1> Back-End Roadmaps </h1>
                        </center> <br>

                        <div class="stepboxes2" id="box2" style="width:49%;">
                            <h1 style="border-bottom:2px solid black"> FULLSTACK JS </h1> <br>
                            <div class="steplinks">
                                <a href="#">
                                    <div id="link1" style="height:2em;cursor:pointer"> SQL </div>
                                </a>
                                <a href="#">
                                    <div id="link2" style="height:2em;cursor:pointer"> Node.js </div>
                                </a>
                                <a href="#">
                                    <div id="link2" style="height:2em;cursor:pointer"> MySQL </div>
                                </a>
                                <a href="#">
                                    <div id="link2" style="height:2em;cursor:pointer"> Mongo.db </div>
                                </a>
                            </div>
                        </div>

                        <div class="stepboxes2" id="box3" style="width:49%;">

                            <h1 style="border-bottom:2px solid black"> FULLSTACK </h1> <br>
                            <div class="steplinks">
                                <a href="">
                                    <div id="link1" style="height:2em;cursor:pointer"> SQL </div>
                                </a>
                                <a href="">
                                    <div id="link2" style="height:2em;cursor:pointer"> PHP </div>
                                </a>
                                <a href="">
                                    <div id="link2" style="height:2em;cursor:pointer"> PYTHON </div>
                                </a>
                                <a href="">
                                    <div id="link2" style="height:2em;cursor:pointer"> ASP </div>
                                </a>
                            </div>

                        </div>
                    </div>

                    <div style="
                            height: 74em;
                            width:96%;
                            margin-right:10%;
                            background: url('https://www.w3schools.com/whatis/img_backend.jpg') no-repeat 100%;
                        ">
                    </div>


                    <div class="title" style="margin-top:5%;">
                        <a href="#"> <button type="button" class="btn btn-success" style="float: left;margin-left:2%">
                                HOME </button> </a>
                        <a href="#"> <button type="button" class="btn btn-success" style="float: right;margin-right:2%">
                                NEXT </button> </a>
                    </div>
                </div>

            </div>

        </div>

    </div>

    <script>

        const getbut = document.querySelectorAll('.links');
        const getpage = document.querySelectorAll('.course');
        let s = "";

        function myfun(e) {
            //console.log(this.id);

            getpage.forEach(z => z.style.zIndex = "0");

            getpage.forEach(a => {
                s = a.id;
                if (this.id == s) {
                    console.log(a.textContent);
                    a.style.zIndex = "1";
                }
            });

        }

        getbut.forEach(e => e.addEventListener("click", myfun));

    </script>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf"
        crossorigin="anonymous"></script>


    <script src="JSfiles/index.js"></script>

</body>

</html>