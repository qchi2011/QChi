/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.goodskpopstore.dal.impl;

import com.goodskpopstore.dal.DBContext;
import com.goodskpopstore.dal.IGenericDAO;
import com.goodskpopstore.entity.OrderDetails;
import com.goodskpopstore.entity.Parameter;
import com.goodskpopstore.mapper.impl.OrderDetailsMapper;
import java.sql.Types;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class OrderDetailsDAO extends DBContext<OrderDetails> implements IGenericDAO<OrderDetails> {

    @Override
    public List<OrderDetails> findAll() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public OrderDetails findOneById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insertToDb(OrderDetails t) {
        String sql = "INSERT INTO [dbo].[OrderDetails]\n"
                + "           ( [quantity]\n"
                + "           ,[productId]\n"
                + "           ,[orderId] )\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?)";
        return insert(sql,
                new Parameter(t.getQuantity(), Types.INTEGER),
                new Parameter(t.getProductId(), Types.INTEGER),
                new Parameter(t.getOrderId(), Types.INTEGER)
        );

    }


    @Override
    public void updateToDb(OrderDetails t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public void delete(OrderDetails t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
   

    public List<OrderDetails> findsByAccountId(int id) {
        String sql = "select od.*\n"
                + "from Account as a, [Order] as o, OrderDetails as od\n"
                + "where od.orderId = o.id and o.accountId = a.id\n"
                + "and a.id = ? order by od.id desc";
        List<OrderDetails> list = query(sql, new OrderDetailsMapper(), new Parameter(id, Types.INTEGER));
        return list;
    }

}
