/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.goodskpopstore.mapper.impl;

import com.goodskpopstore.entity.VerifyRequest;
import com.goodskpopstore.mapper.IGenericMapper;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

/**
 *
 * @author Admin
 */
public class VerifyRequestMapper implements IGenericMapper<VerifyRequest> {

    @Override
    public VerifyRequest mapRow(ResultSet resultSet) {
        try {
            int id = resultSet.getInt("id");
            String requestContent = resultSet.getString("requestContent");
            boolean isVerify = resultSet.getBoolean("isVerify");
            Timestamp expired = resultSet.getTimestamp("expired");
            Timestamp createdAt = resultSet.getTimestamp("createAt");
            int accountId = resultSet.getInt("accountId");
            int emailLogId = resultSet.getInt("emailLogId");
            VerifyRequest verifyRequest = new VerifyRequest(id, requestContent,
                    isVerify, expired, createdAt, accountId, emailLogId);
            return verifyRequest;
        } catch (SQLException e) {
            System.out.println("Wrong at VerifyRequestMapper: " + e.getMessage());
            e.printStackTrace();
            return null;
        }
    }

}
