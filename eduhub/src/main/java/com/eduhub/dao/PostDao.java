package com.eduhub.dao;

import java.sql.*;
import java.util.*;
import com.eduhub.entities.*;

public class PostDao {

    Connection con;

    public PostDao(Connection con) {
        this.con = con;
    }

    public ArrayList<Category> getAllCategories() {
        ArrayList<Category> list = new ArrayList();
        try {
            String q = "select * from category";
            Statement st = this.con.createStatement();
            ResultSet set = st.executeQuery(q);
            while (set.next()) {
                int cid = set.getInt("category_id");
                String name = set.getString("category_name");
                String description = set.getString("category_description");
                Category c = new Category(cid, name, description);
                list.add(c);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public boolean saveposts(Posts p) {
        boolean f = false;

        try {
            String q = "insert into posts(posts_title,posts_content,posts_code,posts_pic,category_id,userid) values(?,?,?,?,?,?)";
            PreparedStatement pstmt = con.prepareStatement(q);
            pstmt.setString(1, p.getPosts_title());
            pstmt.setString(2, p.getPosts_content());
            pstmt.setString(3, p.getPosts_code());
            pstmt.setString(4, p.getPosts_pic());
            pstmt.setInt(5, p.getCategory_id());
            pstmt.setInt(6, p.getUserid());
            pstmt.executeUpdate();
            f = true;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return f;
    }

    //get all the post
    public List<Posts> getAllPosts() {
        // it will fetch all the post
         List<Posts> list = new ArrayList<>();
        try {
            PreparedStatement p = con.prepareStatement("select * from posts order by posts_id desc");
            ResultSet set = p.executeQuery();
            while (set.next()) {
                int pid = set.getInt("posts_id");
                String ptitle = set.getString("posts_title");
                String pcontent = set.getString("posts_content");
                String pcode = set.getString("posts_code");
                String pPic = set.getString("posts_pic");
                Timestamp date = set.getTimestamp("posts_date");
                int cat_Id = set.getInt("category_id");
                int userid = set.getInt("userid");
                Posts postAll = new Posts(pid, ptitle, pcontent, pcode, pPic, date, cat_Id, userid);
                list.add(postAll);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    public List<Posts> getPostByCatId(int cat_Id) {
        // fetch all post by id
        List<Posts> list_catById = new ArrayList<>();
        try {
            PreparedStatement p = con.prepareStatement("select * from posts where category_id=?");
            p.setInt(1,cat_Id);
            ResultSet set = p.executeQuery();
            while (set.next()) {
                int pid = set.getInt("posts_id");
                String ptitle = set.getString("posts_title");
                String pcontent = set.getString("posts_content");
                String pcode = set.getString("posts_code");
                String pPic = set.getString("posts_pic");
                Timestamp date = set.getTimestamp("posts_date");
               
                int userid = set.getInt("userid");
                Posts postById = new Posts(pid, ptitle, pcontent, pcode, pPic, date, cat_Id, userid);
                list_catById.add(postById);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return list_catById;
    }

    public Posts getPostbyPostId(int postId){
        Posts post = null; 
        String q = "select * from posts where posts_id = ?";
        try {
           
            PreparedStatement p = this.con.prepareStatement(q);
            p.setInt(1,postId);
            ResultSet set = p.executeQuery();
            if(set.next()){
                 int pid = set.getInt("posts_id");
                String ptitle = set.getString("posts_title");
                String pcontent = set.getString("posts_content");
                String pcode = set.getString("posts_code");
                String pPic = set.getString("posts_pic");
                Timestamp date = set.getTimestamp("posts_date");
                int cat_Id = set.getInt("category_id");
                int userid = set.getInt("userid");
                post = new Posts(pid, ptitle, pcontent, pcode, pPic, date, cat_Id, userid);
                
            }
            
        } catch (Exception e) {
           e.printStackTrace();
        }
    
    return post;
    }

}
