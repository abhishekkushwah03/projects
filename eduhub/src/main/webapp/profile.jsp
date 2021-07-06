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
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

        <link href="css/universalstyle.css" rel="stylesheet" type="text/css"/>
        <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@600&display=swap" rel="stylesheet">
        <link href="css/index_style.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
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
        </style>
    </head>
    <body>
        <!-- navbar start -->
        <div class="topback">
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

                    <a href="courses.html" id="inlineul">
                        <li  > COURSES  </li>
                    </a>

                    <a href="profile.jsp">                                      
                        <li><span class="fas fa-user-graduate"></span><%= user.getName().toUpperCase()%> </li></a>
                    <a href="Logoutservlet">                        
                        <li><span class="fa fa-power-off"></span> LOGOUT </li>
                    </a>

                </ul>
            </nav>


            <!-- navbar end -->
            <!--        <div>
            <%= user.getName()%><br>
            <%= user.getEmail()%>
        </div>-->
            <!--main body of the page-->
            <main>
                <div class="container bg-transparent">
                    <div class="row mt-4">
                        <!--first coloumn-->
                        <div class="  col-2">
                            <a href="#" data-toggle="modal" data-target="#add-post-modal" class="btn btn-primary btn-sm"style="margin-bottom: 20px;width: 111px;background: darkslategray;">
                                <li > +CREATE BLOG </li>
                            </a>
                            <a href="discussion.jsp"class="btn btn-primary btn-sm"style="background: darkslategray;margin-bottom: 20px;width: 111px;">
                                <li > Q&A </li>
                            </a>
                        </div>

                        <div class = " col-2   ">
                            <!--categoried-->
                            <div class="list-group">
                                <a href="#" onclick="getPosts(0, this)"class="c-link text-dark bg-transparent list-group-item list-group-item-action active">
                                    All posts
                                </a>
                                <!--categoried-->
                                <%
                                    PostDao d = new PostDao(ConnectionProvider.getConnection());
                                    ArrayList<Category> list1 = d.getAllCategories();
                                    for (Category cat1 : list1) {
                                %>
                                <a href="#" onclick="getPosts(<%=cat1.getCategory_id()%>, this)" class="text-dark bg-transparent c-link list-group-item list-group-item-action"><%= cat1.getCategory_name()%></a>
                                <%
                                    }
                                %> 


                            </div>

                        </div>
                        <!--second coloumn-->
                        <div class = " col-sm col-8" >
                            <!--posts-->
                            <div class = "container text-center" id ="loader">
                                <i class="fa fa-refresh fa-40x fa-spin"></i>     
                                <h3>loading.....</h3>

                            </div>
                            <div class = "container-fluid" id ="post-container"></div>

                        </div>

                    </div>

                </div>
            </main>
            <!--end of main page-->
            <!-- Modal -->
            <div class="modal fade" id="add-post-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Post details</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form id="add-post-form"action="AddPostServlet" method="post">
                                <div class="form-group">
                                    <select class="form-control" name="category_id">
                                        <option selected disabled>---Select Category---</option>
                                        <%
                                            PostDao post = new PostDao(ConnectionProvider.getConnection());
                                            ArrayList<Category> list = post.getAllCategories();
                                            for (Category c : list) {
                                        %>
                                        <option value="<%= c.getCategory_id()%>"><%= c.getCategory_name()%></option>

                                        <%
                                            }
                                        %>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <input  name="ptitle" type="text" placeholder="Enter Post Title" class="form-control"/>
                                </div>
                                <div class="form-group">
                                    <textarea name="pcontent" class="form-control" style="height: 200px;" placeholder="Write Content Here"></textarea>
                                </div>
                                <div class="form-group">
                                    <textarea name="pcode" class="form-control" style="height: 100px; background-color: black;color: white;" placeholder="write source code if you want"></textarea>
                                </div>
                                <div class="form-group">
                                    <label> select image</label><br>
                                    <input type="file" name="ppic">
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                    <div class="container ">
                                        <button type="submit" class="btn btn-outline-primary">Post</button>
                                    </div>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!--modal ends here-->
        <!-- JAVASCRIPT-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>      
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>  
        <script src="javascript/profile.js" type="text/javascript"></script>
        <!--loading post using ajax-->

        <script>
                                    function getPosts(catId, temp) {


                                        $("#loader").show();
                                        //  $("#post-container").hide();
                                        $(".c-link").removeClass('active');
                                        $.ajax({
                                            url: "load_posts.jsp",
                                            data: {cid: catId},
                                            success: function (data, textStatus, jqXHR) {
                                                console.log(data);
                                                $("#loader").hide();
                                                $("#post-container").show();
                                                $("#post-container").html(data);
                                                $(temp).addClass('active');
                                            }

                                        })
                                    }
                                    ;
                                    $(document).ready(function (e) {
                                        let allPostRef = $('.c-link')[0]
                                        getPosts(0, allPostRef);
                                    });
        </script>


    </body>
</html>
