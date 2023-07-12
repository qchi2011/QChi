/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.goodskpopstore.mapper.impl;

import com.goodskpopstore.entity.Product;
import com.goodskpopstore.mapper.IGenericMapper;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class ProductMapper implements IGenericMapper<Product> {

    @Override
    public Product mapRow(ResultSet resultSet) {
        try {
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            String description = resultSet.getString("description");
            float price = resultSet.getFloat("price");
            int quantity = resultSet.getInt("quantity");
            String image = resultSet.getString("image");
            int categoryId = resultSet.getInt("categoryId");
            int status = resultSet.getInt("status");

            Product product = new Product(id, name, description, price, quantity, image, categoryId, status);
            return product;
        } catch (SQLException e) {
            System.out.println("Wrong at ProductMapper: " + e.getMessage());
            e.printStackTrace();
            return null;
        }

    }

}
