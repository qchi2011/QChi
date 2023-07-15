/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.goodskpopstore.dal.impl;

import com.goodskpopstore.dal.DBContext;
import com.goodskpopstore.dal.IGenericDAO;
import com.goodskpopstore.entity.Account;
import com.goodskpopstore.entity.Parameter;
import com.goodskpopstore.mapper.impl.AccountMapper;
import java.sql.Types;
import java.util.List;

/**
 *
 * @author Admin
 */
public class AccountDAO extends DBContext<Account> implements IGenericDAO<Account> {

    @Override
    public List<Account> findAll() {
        String sql = "select * from [Account]";
        List<Account> list = query(sql, new AccountMapper());
        return list;
    }

    @Override
    public Account findOneById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insertToDb(Account t) {
        String sql = "INSERT INTO [Account]\n"
                + "           ([username]\n"
                + "           ,[password]\n"
                + "           ,[email]\n"
                + "           ,[address]\n"
                + "           ,[roleid])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        return insert(sql,new Parameter(t.getUsername(), Types.NVARCHAR),
                new Parameter(t.getPassword(), Types.NVARCHAR),
                new Parameter(t.getEmail(), Types.NVARCHAR),
                new Parameter(t.getAddress(), Types.NVARCHAR),
                new Parameter(t.getRoleid(), Types.INTEGER)
        );
    }

    @Override
    public void updateToDb(Account t) {
         String sql = "UPDATE [Account]\n"
                + "   SET [username] = ?\n"
                + "      ,[password] = ?\n"
                + "      ,[email] = ?\n"
                + "      ,[fullname] = ?\n"
                + "      ,[phone] = ?\n"
                + "      ,[address] = ?\n"
                + " WHERE id = ?";
        update(sql,
                new Parameter(t.getUsername(), Types.NVARCHAR),
                new Parameter(t.getPassword(), Types.NVARCHAR),
                new Parameter(t.getEmail(), Types.NVARCHAR),
                new Parameter(t.getFullname(), Types.NVARCHAR),
                new Parameter(t.getPhone(), Types.NVARCHAR),
                new Parameter(t.getAddress(), Types.NVARCHAR),
                new Parameter(t.getId(), Types.INTEGER)
        );
    }

    @Override
    public void delete(Account t) {
         String sql = "DELETE FROM ACCOUNT\n"
                + "WHERE id = ?";
        update(sql, new Parameter(t.getId(), Types.INTEGER));
    }

    public Account findByUsernamePassword(Account account) {
        String sql = "select * from Account\n"
                + "where username = ? and password = ?";
        List<Account> list = query(sql, new AccountMapper(),
                new Parameter(account.getUsername(), Types.NVARCHAR),
                new Parameter(account.getPassword(), Types.NVARCHAR)
        );
        return list.isEmpty() ? null : list.get(0);
    }

    public Account findByUsername(Account t) {
        String sql = "select * from Account where username = ?";
        List<Account> list = query(sql, new AccountMapper(), new Parameter(t.getUsername(), Types.NVARCHAR));
        return list.isEmpty() ? null : list.get(0);
    }

    public Account findByEmail(Account t) {
        String sql = "select * from Account where email = ?";
        List<Account> list = query(sql, new AccountMapper(), new Parameter(t.getEmail(), Types.NVARCHAR));
        return list.isEmpty() ? null : list.get(0);

    }

}
