/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.goodskpopstore.biz.impl;

import com.goodskpopstore.biz.IGenericLogic;
import com.goodskpopstore.dal.impl.CategoryDAO;
import com.goodskpopstore.entity.Category;
import java.util.List;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Admin
 */
public class CategoryLogic implements IGenericLogic<Category>{
    CategoryDAO dao;

    public CategoryLogic() {
        dao = new CategoryDAO();
    }
        
    @Override
    public List<Category> findAll() {
        List<Category> list = dao.findAll();
        return list;
    }

    public int findCategory(HttpServletRequest request) {
        //get category
        String categoryId_Raw = request.getParameter("id");
        //parse
        try {
            int categoryId = Integer.parseInt(categoryId_Raw);
            //check categoryId out range from 1 - 4 
            if (categoryId > dao.findAll().size() || categoryId < 1) {
                throw new IllegalArgumentException();
            }
            return categoryId;
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException();
        }
    }
    
}
