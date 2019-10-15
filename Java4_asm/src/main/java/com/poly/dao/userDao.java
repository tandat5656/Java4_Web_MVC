/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.poly.dao;

import com.poly.model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author MSI
 */
public class userDao extends ConnectDao {

    public userDao() {

    }

    public ArrayList<User> fillAll() {
        ArrayList<User> ds = new ArrayList<User>();
        try {
            Statement lenh = conn.createStatement();
            String sql = "select * from user";
            ResultSet dl = lenh.executeQuery(sql);
            while (dl.next()) {
                int id = dl.getInt(1);
                String username = dl.getString(2);
                String password = dl.getString(3);
                String fullname = dl.getString(4);
                String email = dl.getString(5);
                String phone = dl.getString(6);
                int role = dl.getInt(7);
                User user = new User(id, username, password, fullname, email, phone, role);
                ds.add(user);
            }
        } catch (Exception e) {
            System.out.println("" + e.toString());
        }
        return ds;
    }

    public boolean deleteUser(int id) {
        boolean result = false;
        try {
            String sql = "delete from user where id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1, id);
            if (ps.executeUpdate() > 0) {
                result = true;
            }
        } catch (Exception e) {

        }

        return result;
    }

    public boolean insertUser(User user) {
        boolean result = false;
        try {
            String sql = "insert into user(username,password,fullname,email,phone,role) values(?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getFullname());
            ps.setString(4, user.getEmail());
            ps.setString(5, user.getPhone());
            ps.setInt(6, user.getRole());
            if (ps.executeUpdate() > 0) {
                result = true;
            }
        } catch (Exception e) {
            System.out.println(e.toString());
        }

        return result;
    }

    public User findById(int id) {
        User user = null;
        try {
            String sql = "select * from user where id=" + id;
            PreparedStatement ps = conn.prepareStatement(sql);
            //    ps.setInt(1, id);
            ResultSet dl = ps.executeQuery(sql);
            while (dl.next()) {
                int id_user = dl.getInt(1);
                String username = dl.getString(2);
                String password = dl.getString(3);
                String fullname = dl.getString(4);
                String email = dl.getString(5);
                String phone = dl.getString(6);
                int role = dl.getInt(7);
                user = new User(id, username, password, fullname, email, phone, role);

            }
        } catch (Exception e) {
            System.out.println("loi..................." + e.toString());
        }
        return user;
    }

    public boolean updateUser(User user) {
        boolean result = false;
        try {
            String sql = "update user set username=?, password=?, fullname=?, email=?, phone=?, role=? where id=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getFullname());
            ps.setString(4, user.getEmail());
            ps.setString(5, user.getPhone());
            ps.setInt(6, user.getRole());
            ps.setInt(7, user.getId());
            if (ps.executeUpdate() > 0) {
                result = true;
            }
        } catch (Exception e) {

        }

        return result;
    }
}
