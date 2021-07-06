/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.eduhub.dao;

import com.eduhub.entities.DiscussionQuiz;
import java.sql.*;
import java.util.*;

public class Discussioninsert {

    Connection con;

    public Discussioninsert(Connection con) {
        this.con = con;
    }

    public boolean savequestion(DiscussionQuiz d) {
        boolean f = false;
        try {

            String q = "insert into discussion(question,username) values(?,?)";
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setString(1, d.getQuestion());
            pstmt.setString(2, d.getUsername());
            pstmt.executeUpdate();
            f = true;

        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        return f;
    }
    
     public List<DiscussionQuiz> getAllquestions() {
        // it will fetch all the post
         List<DiscussionQuiz> list = new ArrayList<>();
        try {
            PreparedStatement p = con.prepareStatement("select * from discussion order by quizid desc");
            ResultSet set = p.executeQuery();
            while (set.next()) {
                int quizid = set.getInt("quizid");
                String question = set.getString("question");
                String username = set.getString("username");
                DiscussionQuiz quizAll = new DiscussionQuiz(quizid,question,username);
                list.add(quizAll);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}
