<%@page import="java.text.DateFormat"%>
<%@page import="com.eduhub.dao.Userdao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.eduhub.entities.Category"%>
<%@page import="com.eduhub.entities.Posts"%>
<%@page import="com.eduhub.helper.ConnectionProvider"%>
<%@page import="com.eduhub.dao.PostDao"%>
<%@page import="com.eduhub.entities.User"%>
<%@page errorPage="error_page.jsp" %>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("login.jsp");
    }
%>
<%
    int postId = Integer.parseInt(request.getParameter("post_id"));
    PostDao d = new PostDao(ConnectionProvider.getConnection());
    Posts p = d.getPostbyPostId(postId);

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=p.getPosts_title()%>By Edu-hub</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="css/index_style.css" rel="stylesheet" type="text/css"/>
         <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
          <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@600&display=swap" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .post-title{
                font-weight: 100;
                font-size: 30px;
            }  
            .post-content{
                 font-weight: 100;
                font-size: 25px;
            }
            .post-date{
                font-style: italic;
                font-weight: bold;
                 font-size: 15px;
                font-weight: 100px;
            }
            .post-user-info{
                font-size: 15px;
                font-weight: 100px;
            }
            .row-user{
                border: 1px solid #e2e2e2;
                padding-top: 15px;
            }
            
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
        <nav class="navbar  ">
            <a href="#">
                <div class="logo">
                    <h1> EDU-HUB </h1> 
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
                <a href="#" data-toggle="modal" data-target="#add-post-modal">
                    <li > CREATE BLOG </li>
                </a>

                <a href="profile.jsp">                                      
                    <li><span class="fas fa-user-graduate"></span><%= user.getName().toUpperCase()%> </li>
                </a>
                <a href="Logoutservlet">                        
                    <li ><span class="fa fa-power-off"></span> LOGOUT </li>
                </a>
            </ul>
        </nav>

        <!-- navbar end -->
        <!--content of the page like card containing post-->
        <div class="container">
            <div class="row my-4">
                <div class="col-md-8 offset-md-2">
                    <div class="card-header">
                        <h4 class="post-title"><%=p.getPosts_title()%></h4>
                        <img class="card-img-top" src="blogimages/<%= p.getPosts_pic()%>" alt=""></img>
                        <div class="row my-3 row-user">
                            <div class="col-md-8">
                                <%
                                    Userdao usr = new Userdao(ConnectionProvider.getConnection());
                                    
                                %>
                                <p class="post-user-info">Posted by  <a href=""><%= usr.getUserByUserId(p.getUserid()).getName()%></a></p>
                            </div>
                            <div class="col-md-4">
                                <p class="post-date"> <%=DateFormat.getDateTimeInstance().format(p.getPosts_date())%></p>
                            </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <p class="post-content"><%=p.getPosts_content()%></p><br><br>
                        <div class="post-code">
                            <pre><%=p.getPosts_code()%></pre></div>
                    </div >
                    <div class="card-footer">

                    </div>
                </div>
            </div>
        </div>






        <!--end of main content of the page-->
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
        <!--modal ends here-->


        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>      
        <script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
        <script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>  
        <script src="javascript/profile.js" type="text/javascript"></script>
    </body>
</html>
