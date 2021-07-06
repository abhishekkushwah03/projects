<%@page import="java.util.List"%>
<%@page import="com.eduhub.entities.DiscussionQuiz"%>
<%@page import="com.eduhub.dao.Discussioninsert"%>
<%@page import="java.text.DateFormat"%>
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
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@600&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <!--<link href="css/index_style.css" rel="stylesheet" type="text/css"/>-->
        <link href="css/index_style.css" rel="stylesheet" type="text/css"/>
        <link href="css/discussion.css" rel="stylesheet" type="text/css"/>
        <title>Discussion section</title>
        <style>
            .logo h1{
                font-size: 1.5rem;
                font-weight: revert;
                margin: auto;
            }
            .logo{
                width: auto;

            }
            nav{
                margin-top: -8px;
            }
            .askme{
                display: inline-block;
                margin-left: 10px;
                margin-top: 40px;
                margin-bottom: -20px;
                width: 7rem;
                height: 30px;
            }
            .btn-primary{
                background-color: darkslategrey;
            }
            .ask_border{

                border-radius: 8px;
                text-align:center;
            }
            .question_area{
                width:100%;
                height:122px;
                border-radius: 10px;

            }
            #myquiz{
                margin-top: 40px;   
            }
        </style>
        <!--            <div id="fb-root"></div>
                    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_GB/sdk.js#xfbml=1&version=v10.0" nonce="wmn1IljS"></script>-->

    </head>
    <body>

        <!-- navbar start -->
        <nav class="navbar  ">
            <a href="#">
                <div class="logo">
                    <h1> EDU-HUB </h1> 
                    <img src="https://cdn4.vectorstock.com/i/1000x1000/36/03/open-book-vector-18443603.jpg" alt="bookimage" style="width: 36%;
                         height: 94%;
                         margin-left: 1% !important;">
                </div>
            </a>
            <ul id="navitems">
                <a href="home1.jsp">
                    <li id="navitem"> HOME </li>
                </a>

                <a href="courses.jsp" id="inlineul">
                    <li  > COURSES  </li>
                </a>


                <a href="#" data-toggle="modal" data-target="#add-post-modal">
                    <li > CREATE BLOG </li>
                </a>

                <a href="profile.jsp">                                      
                    <li><span class="fas fa-user-graduate"></span><%= user.getName().toUpperCase()%> </li></a>
                <a href="Logoutservlet">                        
                    <li ><span class="fa fa-power-off"></span> LOGOUT </li>
                </a>

            </ul>
        </nav>

        <!-- navbar end -->
        <!--forum start here-->
        <div class="px-4 pt-3"> <button type="button" class="btn btn-primary askme ask_border" data-toggle="modal" data-target="#exampleModalCenter"><i class="ion ion-md-create"></i>&nbsp; Ask Doubt?</button> </div>

        <div id="myquiz"></div
        <%
            //  User user = (User) session.getAttribute("currentUser");
            //  if (user == null) {
            //      response.sendRedirect("login.jsp");
            //   }

            Discussioninsert dsi = new Discussioninsert(ConnectionProvider.getConnection());
            List<DiscussionQuiz> quizlist = null;
            quizlist = dsi.getAllquestions();

            for (DiscussionQuiz d1 : quizlist) {
        %>
        <div class="container-fluid mt-50">

            <div class="row" >
                <div class="col-md-12"style="border-color: darkslategrey;">
                    <div class="card mb-4">
                        <div class="card-header">
                            <div class="media flex-wrap w-100 align-items-center"> <img src="images/disucssionimage.jpg" class="d-block ui-w-40 rounded-circle" alt="">
                                <div class="media-body ml-3""> <a href="javascript:void(0)" data-abc="true"><%=d1.getUsername()%></a>

                                </div>
                                <div class="text-muted small ml-3">
                                    <div>Member since  <%= DateFormat.getDateInstance().format(user.getDateTime())%> <strong>

                                        </strong></div>

                                </div>
                            </div>
                        </div>
                        <form id="'reg"actionjavascript() method="POST">
                            <div class="card-body">
                                <span name="quizid" id="quizid" style="display: inline;font-size: 15px;"><%=d1.getQuizid()%></span>
                                <p name="question" style="font-size: 20px;font-weight: bold;display: inline;"> <%=d1.getQuestion()%></p><br>
                                <div id="dumpanswer"style="font-style: inherit"><div>
                                    </div>
                                    <div class="card-footer d-flex flex-wrap justify-content-between align-items-center px-0 pt-0 pb-3">
                                        <div class="fb-comments" data-href="http://localhost:8080/eduhub/discussion.jsp" data-width="" data-numposts="5"></div>
                                        <textarea name="answer"id="dumpinganswer" required placeholder="Write your answer here" class="form-control"style="width: 1000px;border-color: darkslategray;"></textarea> 
                                        <div class="px-4 pt-3"> <Button type="submit" class="btn btn-primary ask_border "style="height: 30px;width: 7rem;margin-left: 10px;color: white;"><i class="ion ion-md-create"></i>&nbsp; Reply</Button> </div>

                                    </div>
                                    </form>    
                                </div>
                            </div>
                    </div>

                </div>
                <%
                    }
                %>      


                <!-- Modal -->
                <form  id="discussion-form"action="DiscussionServlet" method="POST">
                    <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLongTitle">Ask your Question</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true">&times;</span>
                                    </button>
                                </div>
                                <div class="modal-body"style="border: none;">
                                    <textarea class="question_area" id="ansid"type="text" required placeholder="Enter question here" name="question"></textarea>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <button type="submit"  class="btn btn-primary">Submit</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </form>

                <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>      
                <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
                <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
                <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
                <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>  
                <script>
                    $(document).ready(function () {
    console.log("loaded..");
    $('#reg').on('submit', function (event) {
        event.preventDefault();
        // grabing all the data of form variable into variable
        let form = new FormData(this);
        //sending all the data from form to servlet
        $.ajax({
            url: "DiscussionAnswer",
            type: 'POST',
            data: form,
            success: function (data, textStatus, jqXHR) {
                console.log(data);           
            },
            error: function (jqXHR, textStatus, errorThrown) {
               alert("error");
            },

            processData: false,
            contentType: false
        });
    });
});


// signup javascript ends here

                </script>
                <script>
                 function myfun(){
                 var id =   document.getElementById("quizid").textContent;
                 var answer = document.getElementById("answer").textContent;
                 var question = document.getElementById("question").textContent;
                 console.log(id);
                 console.log(answer);
                 console.log(question);
             }  
                </script>
                </body>
                </html>
