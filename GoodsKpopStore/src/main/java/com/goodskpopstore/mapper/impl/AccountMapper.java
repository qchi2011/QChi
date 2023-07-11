/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.goodskpopstore.mapper.impl;

import com.goodskpopstore.entity.Account;
import com.goodskpopstore.mapper.IGenericMapper;
import java.sql.ResultSet;

/**
 *
 * @author Admin
 */
public class AccountMapper implements IGenericMapper<Account> {

    @Override
    public Account mapRow(ResultSet resultSet) {
        try {
            int id = resultSet.getInt("id");
            String username = resultSet.getString("username");
            String password = resultSet.getString("password");
            String email = resultSet.getString("email");
            String address = resultSet.getString("address");
            int roleid = resultSet.getInt("roleid");
            String phone = resultSet.getString("phone");
            String fullname = resultSet.getString("fullname");

            Account account = new Account(id, username, password, email, address, roleid, phone, fullname);
            return account;
        } catch (Exception e) {
            System.out.println("Wrong at AccountMapper: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

}
