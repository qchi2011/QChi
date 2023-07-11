/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.goodskpopstore.biz.impl;

import com.goodskpopstore.biz.IGenericLogic;
import com.goodskpopstore.dal.impl.AccountDAO;
import com.goodskpopstore.entity.Account;
import com.goodskpopstore.constant.CommonConst;
import com.goodskpopstore.entity.Parameter;
import java.sql.Types;
import java.util.List;

/**
 *
 * @author Admin
 */
public class AccountLogic implements IGenericLogic<Account> {

    AccountDAO dao;

    public AccountLogic() {
        dao = new AccountDAO();
    }

    @Override
    public List<Account> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insertToDb(Account t) {
        //check username exist
        if (dao.findByUsername(t) != null) {
            throw new IllegalArgumentException("Username already exists!");
        }
        //check email exist
        if (dao.findByEmail(t) != null) {
            throw new IllegalArgumentException("Email already exists!");
        }
        return dao.insertToDb(t);
    }

    @Override
    public void updateToDb(Account t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(Account t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public Account findAccount(Account account, String optionFind) {
        Account accountFound = null;
        switch (optionFind) {
//            case CommonConst.FIND_ACCOUNT_BY_EMAIL:
//                
//                break;
            case CommonConst.FIND_ACCOUNT_BY_USERNAME_PASSWORD:
                accountFound = dao.findByUsernamePassword(account);
                break;
        }
        return accountFound;

    }

    public void updateProfile(String username, String fullname, String phone, String address) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET \n"
                + "      [fullname] = ?,\n"
                + "      [phone] = ?,\n"
                + "      [address] = ?\n"
                + " WHERE username = ?";
        dao.update(sql, new Parameter(fullname, Types.NVARCHAR),
                new Parameter(phone, Types.NVARCHAR),
                new Parameter(address, Types.NVARCHAR),
                new Parameter(username, Types.NVARCHAR)
        );
    }
//
//    public void updatePassword(String username, String newPassword) {
//        String sql = "UPDATE [dbo].[Account]\n"
//                + "   SET \n"
//                + "      [password] = ?\n"
//                + " WHERE username = ?";
//        dao.update(sql, new Parameter(newPassword, Types.NVARCHAR),
//                new Parameter(username, Types.NVARCHAR));
//    }

}
