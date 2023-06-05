/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.goodskpopstore.biz.impl;

import com.goodskpopstore.biz.IGenericLogic;
import com.goodskpopstore.dal.impl.ProductDAO;
import com.goodskpopstore.entity.Product;
import java.util.List;

/**
 *
 * @author Admin
 */
public class ProductLogic implements IGenericLogic<Product> {
    ProductDAO dao;
    
    public ProductLogic(){
        dao = new ProductDAO();
    }
    @Override
    public List<Product> findAll() {
       List<Product> list = dao.findAll();
        System.out.println("ProductLogic");
       return list;
    }

   
    
}
