/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.eduhub.entities;

import java.sql.Timestamp;

/**
 *
 * @author user
 */
public class DiscussionQuiz {

    private int quizid;
    private String question;
    private String username;
   private Timestamp dateTime;

    public DiscussionQuiz() {
    }

    public DiscussionQuiz(int quizid, String question, String username, Timestamp dateTime) {
        this.quizid = quizid;
        this.question = question;
        this.username = username;
        this.dateTime = dateTime;
    }
    
    public DiscussionQuiz(String question, String username) {
        this.question = question;
        this.username = username;
    }

    public DiscussionQuiz(int quizid, String question, String username) {
        this.quizid = quizid;
        this.question = question;
        this.username = username;
    }

    public int getQuizid() {
        return quizid;
    }

    public void setQuizid(int quizid) {
        this.quizid = quizid;
    }

    public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public Timestamp getDateTime() {
        return dateTime;
    }

    public void setDateTime(Timestamp dateTime) {
        this.dateTime = dateTime;
    }
    

}
