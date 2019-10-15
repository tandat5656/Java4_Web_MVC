/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.poly.dao;

import com.poly.model.Product;
import com.poly.model.User;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 *
 * @author MSI
 */
public class ProductDao extends ConnectDao{
    public ProductDao(){
    
}
      public ArrayList<Product> fillAll() {
        ArrayList<Product> ds = new ArrayList<Product>();
        try {
            Statement lenh = conn.createStatement();
            String sql = "select * from products";
            ResultSet dl = lenh.executeQuery(sql);
            while (dl.next()) {
                int id = dl.getInt(1);
                String name = dl.getString(2);
                int price = dl.getInt(3);
                String note = dl.getString(4);
                String image = dl.getString(5);
                int category_id = dl.getInt(6);
                Product product = new Product(id, name, price, note, image, category_id);
                ds.add(product);
            }
        } catch (Exception e) {
            System.out.println("" + e.toString());
        }
        return ds;
    }
}
