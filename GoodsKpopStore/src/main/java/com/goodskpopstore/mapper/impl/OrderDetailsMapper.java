/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.goodskpopstore.mapper.impl;

import com.goodskpopstore.entity.OrderDetails;
import com.goodskpopstore.mapper.IGenericMapper;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class OrderDetailsMapper implements IGenericMapper<OrderDetails> {

    @Override
    public OrderDetails mapRow(ResultSet resultSet) {
        try {
            int id = resultSet.getInt("id");
            int quantity = resultSet.getInt("quantity");
            int productId = resultSet.getInt("productId");
            int orderId = resultSet.getInt("orderId");
            
            OrderDetails orderDetails = new OrderDetails(id, quantity, productId, orderId);
            return orderDetails;
        } catch (Exception e) {
            System.out.println("Wrong at OrderDetailsMapper: " + e.getMessage());
            e.printStackTrace();
            return null;
        }

    }
    
}
