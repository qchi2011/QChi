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
       String sql = "INSERT INTO [Product]\n"
                + "           ([name]\n"
                + "           ,[description]\n"
                + "           ,[price]\n"
                + "           ,[quantity]\n"
                + "           ,[image]\n"
                + "           ,[categoryId])\n"
                + "     VALUES\n"
                + "           (?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?\n"
                + "           ,?)";
        int id = insert(sql,
                new Parameter(t.getName(), Types.NVARCHAR),
                new Parameter(t.getDescription(), Types.NVARCHAR),
                new Parameter(t.getPrice(), Types.FLOAT),
                new Parameter(t.getQuantity(), Types.INTEGER),
                new Parameter(t.getImage(), Types.NVARCHAR),
                new Parameter(t.getCategoryId(), Types.INTEGER)
        );
        return  id;       
    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
//        System.out.println(dao.findTotalRecord());
//        for (Product product : dao.findProductByKeyword("blackpink")) {
//            System.out.println(product);
    }

    public int findTotalRecord(String keyword) {
        String sql = "select count(*) from Product\n"
                + "where name like ?";
        return findTotalRecord(sql, new Parameter("%" + keyword + "%", Types.NVARCHAR));
    }

    public List<Product> findProductByPage(int page, String keyword) {
        String sql = "select * from Product\n"
                + "where name like ?\n"
                + "order by id\n"
                + "offset ?\n"
                + "rows fetch next ?\n"
                + "rows only";
        List<Product> listByCurrentPage = query(sql, new ProductMapper(),
                new Parameter("%" + keyword + "%", Types.NVARCHAR),
                new Parameter((page - 1) * CommonConst.PRODUCT_RECORD_PER_PAGE, Types.INTEGER),
                new Parameter(CommonConst.PRODUCT_RECORD_PER_PAGE, Types.INTEGER));
        return listByCurrentPage;
    }

    public int findTotalRecordByCateId(int categoryId) {
        String sql = "select count(*) from Product\n"
                + "where categoryId = ?";
        return findTotalRecord(sql, new Parameter(categoryId, Types.INTEGER));

    }

    public List<Product> findProductByCategory(int page, int categoryId) {
        String sql = "select * from Product\n"
                + "where categoryId = ?\n"
                + "order by id\n"
                + "offset ?\n"
                + "rows fetch next ?\n"
                + "rows only";
        List<Product> listByCurrentPage = query(sql, new ProductMapper(),
                new Parameter(categoryId, Types.INTEGER),
                new Parameter((page - 1) * CommonConst.PRODUCT_RECORD_PER_PAGE, Types.INTEGER),
                new Parameter(CommonConst.PRODUCT_RECORD_PER_PAGE, Types.INTEGER));
        return listByCurrentPage;
    }

}
