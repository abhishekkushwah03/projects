<%@page import="com.eduhub.entities.Posts"%>
<%@page import="java.util.List"%>
<%@page import="com.eduhub.dao.PostDao"%>
<%@page import="com.eduhub.helper.ConnectionProvider"%>

<div class="row">


    <%
//        Thread.sleep(1000);
        PostDao d = new PostDao(ConnectionProvider.getConnection());
        List<Posts> post = null;
        int catId = Integer.parseInt(request.getParameter("cid"));
        if (catId == 0) {
            post = d.getAllPosts();
        } else {
            post = d.getPostByCatId(catId);

        }
        if (post.size() == 0) {
            out.println("<h3 class ='display-3 text-center'>Posts not available in this category</h3>");
        }

        for (Posts p : post) {
    %>
    <div class="col-md-4 mt-3">
        <div class = "card bg-transparent shadow-lg p-3 mb-5 bg-white rounded">
<!--            <img class="card-img-top" src="blogimages/<%= p.getPosts_pic()%>" alt=""></img>-->
            <div class = "card-body">
                <b><%= p.getPosts_title()%></b>
<!--                <p><%= p.getPosts_content()%></></br>
                <pre><%= p.getPosts_code()%></pre>-->
            </div>
            <div class ="card-footer text-center bg-transparent">
                <a href="show_blog.jsp?post_id=<%=p.getPosts_id()%>" class="btn btn-primary btn-sm"style="background: darkslategray;">Read more</a>
              
                
                
            </div>


        </div>



    </div>

    <%
        }

    %>

</div>
