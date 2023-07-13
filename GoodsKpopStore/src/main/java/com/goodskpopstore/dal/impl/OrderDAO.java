/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.goodskpopstore.dal.impl;

import com.goodskpopstore.dal.DBContext;
import com.goodskpopstore.dal.IGenericDAO;
import com.goodskpopstore.entity.Order;
import com.goodskpopstore.entity.Parameter;
import com.goodskpopstore.mapper.impl.OrderMapper;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class OrderDAO extends DBContext<Order> implements IGenericDAO<Order> {

    @Override
    public List<Order> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public Order findOneById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insertToDb(Order t) {
        String sql = "INSERT INTO [dbo].[Order]\n"
                + "           ([amount]\n"
                + "           ,[description]\n"
                + "           ,[createAt]\n"
                + "           ,[accountId]\n"
                + "           ,[status])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        return insert(sql,
                new Parameter(t.getAmount(), Types.FLOAT),
                new Parameter(t.getDescription(), Types.NVARCHAR),
                new Parameter(t.getCreateAt(), Types.TIMESTAMP),
                new Parameter(t.getAccountId(), Types.TIMESTAMP),
                new Parameter(1, Types.INTEGER)
        );

    }

//    true
    @Override
    public void updateToDb(Order t) {
        String sql = "UPDATE [ORDER] SET status = 0 WHERE id = ?";
        update(sql, new Parameter(t.getId(), Types.INTEGER));
    }

    @Override
    public void delete(Order t) {
        String sql = "DELETE FROM [ORDER]\n"
                + "WHERE id = ?";
        update(sql, new Parameter(t.getId(), Types.INTEGER));
    }

    public List<Order> findOrdersByAccountId(int accountId, int status) {
        String sql = "select * from [Order] where accountId = ? and status = 1";
        List<Order> listOrder = query(sql, new OrderMapper(), new Parameter(accountId, Types.INTEGER));
        return listOrder;
    }

}
