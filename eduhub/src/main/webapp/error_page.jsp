<%-- 
    Document   : error_page
    Created on : 17-Mar-2021, 7:45:41 pm
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <title>sorry!something went wrong</title>
    </head>
    <body>
        <div class="container text-center">
            <img src="images/error.png" class="img-fluid">
            <h3>something went wrong! try again</h3>
            <%= exception%>
            <a href="index.jsp"class="btn primary-background btn-lg text-blue mt-3">Home</a>
        </div>
    </body>
</html>
