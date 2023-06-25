/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.goodskpopstore.biz.impl;

import com.goodskpopstore.biz.IGenericLogic;
import com.goodskpopstore.dal.impl.ProductDAO;
import com.goodskpopstore.entity.Product;
import com.sun.corba.se.impl.oa.poa.AOMEntry;
import constant.CommonConst;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Admin
 */
public class ProductLogic implements IGenericLogic<Product> {

    ProductDAO dao;

    public ProductLogic() {
        dao = new ProductDAO();
    }

    @Override
    public List<Product> findAll() {
        List<Product> list = dao.findAll();
        return list;
    }

    public int findCurrentPage(HttpServletRequest request) {
        int currentPage;
        if (request.getParameter("page") == null) {
            currentPage = 1;
        } else {
            try {
                currentPage = Integer.parseInt(request.getParameter("page"));
            } catch (NumberFormatException e) {
                currentPage = 1;
            }
        }
        return currentPage;
    }

    public int findTotalRecord(String keyword) {
        int totalRecord = dao.findTotalRecord(keyword);
        return totalRecord;
    }

    public int findTotalPage(int totalRecord) {
//       Tong so trang: 11
        int totalPage = totalRecord / CommonConst.PRODUCT_RECORD_PER_PAGE;
//       So san pham con du: 4
        int du = totalRecord % CommonConst.PRODUCT_RECORD_PER_PAGE;
        if ( du >  0) {
            return ++totalPage;
        } else {
            return totalPage;
        }

    }

    public List<Product> findProductByPage(int page, String keyword) {
        List<Product> listByCurrentPage = dao.findProductByPage(page, keyword);
        return listByCurrentPage;
    }

    public int findTotalRecordByCateId(int categoryId) {
        int totalRecord = dao.findTotalRecordByCateId(categoryId);
        return totalRecord;
    }

    public List<Product> findProductByCategory(int page, int categoryId) {
        List<Product> listByCurrentPage = dao.findProductByCategory(page, categoryId);
        return listByCurrentPage;
    }

    @Override
    public int insertToDb(Product t) {
        return dao.insertToDb(t);
    }
    @Override
    public void updateToDb(Product t) {
        dao.updateToDb(t);
    }

    public void delete(Product t) {
        dao.delete(t);
    }

}
