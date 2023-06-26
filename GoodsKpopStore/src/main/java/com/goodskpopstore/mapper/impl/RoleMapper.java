/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.goodskpopstore.mapper.impl;

import com.goodskpopstore.entity.Role;
import com.goodskpopstore.mapper.IGenericMapper;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class RoleMapper implements IGenericMapper<Role>{

    @Override
    public Role mapRow(ResultSet resultSet) {
        try {
            int id = resultSet.getInt("id");
            String name = resultSet.getString("name");

            Role role = new Role(id, name);
            return role;
        } catch (Exception e) {
            System.out.println("Wrong at RoleMapper: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }
    
}
