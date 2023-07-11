/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.goodskpopstore.mapper.impl;

import com.goodskpopstore.entity.Order;
import com.goodskpopstore.mapper.IGenericMapper;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 *
 * @author Admin
 */
public class OrderMapper implements IGenericMapper<Order>{

    @Override
    public Order mapRow(ResultSet resultSet) {
        try {
            int id = resultSet.getInt("id");
            float quantity = resultSet.getInt("amount");
            String description = resultSet.getString("description");
            Timestamp createAt = resultSet.getTimestamp("createAt");
            int accountId = resultSet.getInt("accountId");
            Order order = new Order(id, quantity, description, createAt, accountId);
            return order;
        } catch (SQLException e) {
            System.out.println("Wrong at OrderMapper: " + e.getMessage());
            e.printStackTrace();
            return null;
        }

    }
    
}
