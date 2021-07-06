package com.eduhub.dao;

import com.eduhub.helper.ConnectionProvider;
import com.eduhub.entities.User;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author user
 */

public class Userdao {

    private final Connection con;
    boolean f = false;

    public Userdao(Connection con) {
        this.con = con;
    }

    // method to insert data into database;
    public boolean saveUser(User usr) {
        try {

            String query = "insert into users(username,email,password)values(?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1, usr.getName());
            pstmt.setString(2, usr.getEmail());
            pstmt.setString(3, usr.getPassword());
            f = true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return f;
    }

    //funtion to get the data of username and password from the database
    public User getUserEmaiAndPassword(String email, String password) {
        User user = null;
        try {
            String query = "select * from users where email=? and password=?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            ResultSet set = pstmt.executeQuery();
            if (set.next()) {
                user = new User();
                user.setUserid(set.getInt("userid"));
                String name = set.getString("username");
                user.setName(name);
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setDateTime(set.getTimestamp("time"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }

    public User getUserByUserId(int userId) {
        User user = null;
        String q = "select * from users where userId = ?";
        try {

            PreparedStatement ps = this.con.prepareStatement(q);
            ps.setInt(1, userId);
            ResultSet set = ps.executeQuery();
            if (set.next()) {
                      
                    user = new User();
                    user.setUserid(set.getInt("userid"));
                    String name = set.getString("username");
                    user.setName(name);
                    user.setEmail(set.getString("email"));
                    user.setPassword(set.getString("password"));
                     user.setDateTime(set.getTimestamp("time"));
              
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
    
    public boolean updateUserPass(User usr){
          
        try {
          
            String query = "UPDATE users SET password = ? WHERE email = ?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, usr.getPassword());
            pstmt.setString(2, usr.getEmail());
            pstmt.executeUpdate();
            f  = true;
 
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
         return f;
    }
}
