/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.goodskpopstore.mapper.impl;

import com.goodskpopstore.entity.Category;
import com.goodskpopstore.mapper.IGenericMapper;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class CategoryMapper implements IGenericMapper<Category>{

    @Override
    public Category mapRow(ResultSet resultSet) {
        try {
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");
            Category category = new Category(id, name);
            return category;
        } catch (Exception e) {
            System.out.println("Wrong at CategoryMapper: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }
    
}
