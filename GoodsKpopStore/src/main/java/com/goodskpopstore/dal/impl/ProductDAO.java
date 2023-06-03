/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.goodskpopstore.dal.impl;

import com.goodskpopstore.dal.DBContext;
import com.goodskpopstore.dal.IGenericDAO;
import com.goodskpopstore.entity.Product;
import com.goodskpopstore.mapper.impl.ProductMapper;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ProductDAO extends DBContext<Product> implements IGenericDAO<Product> {

    @Override
    public List<Product> findAll() {
        String sql = "select * from Product";
        List<Product> list = query(sql, new ProductMapper());
        return list;
        
    }

    @Override
    public Product findOneById(int id) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    @Override
    public int insertToDb(Product t) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        for (Product product : dao.findAll()) {
            System.out.println(product);
        }
    }
}
