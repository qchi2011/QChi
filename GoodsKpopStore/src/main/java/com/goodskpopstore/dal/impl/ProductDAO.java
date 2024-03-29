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
import com.goodskpopstore.constant.CommonConst;
import java.sql.Types;
import java.util.HashMap;
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
        String sql = "select * from Product where id = ?";
        List<Product> list = query(sql, new ProductMapper(), new Parameter(id, Types.INTEGER));
        return list.isEmpty() ? null : list.get(0);
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
        return id;
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

    @Override
    public void updateToDb(Product t) {
        String sql = "UPDATE [Product]\n"
                + "   SET [name] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[quantity] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[categoryId] = ?\n"
                + " WHERE id = ?";
        update(sql,
                new Parameter(t.getName(), Types.NVARCHAR),
                new Parameter(t.getDescription(), Types.NVARCHAR),
                new Parameter(t.getPrice(), Types.FLOAT),
                new Parameter(t.getQuantity(), Types.INTEGER),
                new Parameter(t.getImage(), Types.NVARCHAR),
                new Parameter(t.getCategoryId(), Types.INTEGER),
                new Parameter(t.getId(), Types.INTEGER)
        );
    }

    @Override
    public void delete(Product t) {
        String sql = "DELETE FROM PRODUCT\n"
                + "WHERE id = ?";
        update(sql, new Parameter(t.getId(), Types.INTEGER));
    }

    public HashMap<Integer, Product> findProductsByAccountId(int id) {
        String sql = "select b.*\n"
                + "from Account as a, Product as b, [Order] as o, OrderDetails as od\n"
                + "where b.id = od.productId and od.orderId = o.id and o.accountId = a.id\n"
                + "and a.id = ?";
        List<Product> list = query(sql, new ProductMapper(),
                new Parameter(id, Types.INTEGER)
        );
        HashMap<Integer, Product> hashMap = new HashMap<>();
        // Iterate through the ArrayList and add elements to the HashMap
        for (Product product : list) {
            hashMap.put(product.getId(), product);
        }
        return hashMap;
    }

    public List<Product> findProductByStatus() {
        String sql = "select * from Product\n"
                + "where status = 1";
        List<Product> list = query(sql, new ProductMapper());
        return list;
    }

}
