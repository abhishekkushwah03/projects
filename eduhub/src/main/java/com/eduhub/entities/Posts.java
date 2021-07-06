
package com.eduhub.entities;

import java.sql.*;

public class Posts {
    int posts_id;
    private String posts_title;
    private String posts_content;
    private String posts_code;
    private String posts_pic;
    private Timestamp posts_date;
    private int category_id;
    private int userid;

    public Posts(int posts_id, String posts_title, String posts_content, String posts_code, String posts_pic, Timestamp posts_date, int category_id,int userid) {
        this.posts_id = posts_id;
        this.posts_title = posts_title;
        this.posts_content = posts_content;
        this.posts_code = posts_code;
        this.posts_pic = posts_pic;
        this.posts_date = posts_date;
        this.category_id = category_id;
        this.userid = userid;
    }

    public Posts(String posts_title, String posts_content, String posts_code, String posts_pic, Timestamp posts_date, int category_id,int userid) {
        this.posts_title = posts_title;
        this.posts_content = posts_content;
        this.posts_code = posts_code;
        this.posts_pic = posts_pic;
        this.posts_date = posts_date;
        this.category_id = category_id;
        this.userid = userid;
    }
    

    public Posts() {
    }



    public int getPosts_id() {
        return posts_id;
    }

    public void setPosts_id(int posts_id) {
        this.posts_id = posts_id;
    }

    public String getPosts_title() {
        return posts_title;
    }

    public void setPosts_title(String posts_title) {
        this.posts_title = posts_title;
    }

    public String getPosts_content() {
        return posts_content;
    }

    public void setPosts_content(String posts_content) {
        this.posts_content = posts_content;
    }

    public String getPosts_code() {
        return posts_code;
    }

    public void setPosts_code(String posts_code) {
        this.posts_code = posts_code;
    }

    public String getPosts_pic() {
        return posts_pic;
    }

    public void setPosts_pic(String posts_pic) {
        this.posts_pic = posts_pic;
    }

    public Timestamp getPosts_date() {
        return posts_date;
    }

    public void setPosts_date(Timestamp posts_date) {
        this.posts_date = posts_date;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

 

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

 
    
    
}
