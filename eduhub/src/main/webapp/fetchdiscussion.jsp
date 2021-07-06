<%@page import="com.eduhub.helper.ConnectionProvider"%>
<%@page import="com.eduhub.dao.Discussioninsert"%>
<%@page import="java.util.*"%>
<%@page import="com.eduhub.entities.DiscussionQuiz"%>
<%@page import="java.text.DateFormat"%>
<%@page import="com.eduhub.entities.User" %>
<%@page errorPage="error_page.jsp"%>
<%
    User user = (User) session.getAttribute("currentUser");
    if (user == null) {
        response.sendRedirect("login.jsp");
    }

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
                            <div>Member since <strong>

                                </strong></div>

                        </div>
                    </div>
                </div>
                    <div class="card-body">
                        <span name="quizid" style="display: inline;font-size: 15px;"><%=d1.getQuizid()%></span>
                        <p name="question" style="font-size: 20px;font-weight: bold;display: inline;"> <%=d1.getQuestion()%></p>
                        <!--//        <p> For me, getting my business website made was a lot of tech wizardry things. Thankfully i get an ad on Facebook ragarding commence website. I get connected with BBB team. They made my stunning website live in just 3 days. With the increase demand of online customers. I had to take my business online. BBB Team guided me at each step and enabled me to centralise my work and have control on all aspect of my online business. </p>-->

                    </div>
                    <div class="card-footer d-flex flex-wrap justify-content-between align-items-center px-0 pt-0 pb-3">

                        <textarea name="answer" required placeholder="Write your answer here" class="form-control"style="width: 1000px;border-color:darkslategrey;"></textarea> 
                        <div class="px-4 pt-3"> <Button "type="submit" class="btn btn-primary ask_border "style="height: 30px;width: 7rem;margin-left: 10px;color: white;"><i class="ion ion-md-create"></i>&nbsp; Reply</Button> </div>

                    </div>
                </form>
            </div>
        </div>
    </div>

</div>
<%
    }
%>                          