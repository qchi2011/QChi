/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.goodskpopstore.dal.impl;

import com.goodskpopstore.dal.DBContext;
import com.goodskpopstore.dal.IGenericDAO;
import com.goodskpopstore.entity.Parameter;
import com.goodskpopstore.entity.Product;
import com.goodskpopstore.mapper.impl.ProductMapper;
import constant.CommonConst;
import java.sql.Types;
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
       System.out.println(dao.findTotalRecord());
//        for (Product product : dao.findProductByPage(2)) {
//            System.out.println(product);
//        }
    }

    public int findTotalRecord() {
        String sql = "select count(*) from Product";
        return findTotalRecord(sql);
    }

    public List<Product> findProductByPage(int page) {
        String sql = "select * from Product\n"
                + "order by id\n"
                + "offset ?\n"
                + "rows fetch next ?\n"
                + "rows only";
        List<Product> listByCurrentPage = query(sql, new ProductMapper(),
                new Parameter((page - 1) * CommonConst.PRODUCT_RECORD_PER_PAGE, Types.INTEGER),
                new Parameter(CommonConst.PRODUCT_RECORD_PER_PAGE, Types.INTEGER));
        return listByCurrentPage;
    }
}
