/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.user;

import com.goodskpopstore.biz.impl.CategoryLogic;
import com.goodskpopstore.biz.impl.ProductLogic;
import com.goodskpopstore.entity.Category;
import com.goodskpopstore.entity.PageControl;
import com.goodskpopstore.entity.Product;
import constant.CommonConst;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class HomePageServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductLogic productLogic = new ProductLogic();
        CategoryLogic categoryLogic = new CategoryLogic();
        //get sesion
        HttpSession session = request.getSession();
        //get total product in dtb
        int totalRecord = productLogic.findTotalRecord("");
        
        //get total page
        int totalPage = productLogic.findTotalPage(totalRecord);
        //get current page
        int page = productLogic.findCurrentPage(request);
        
        if( page >= totalPage){
            page = totalPage;
        }
        
        //get list product by currentpage
        List<Product> listByCurrentPage = productLogic.findProductByPage(page, "");

        //get list category
        List<Category> listCategories = categoryLogic.findAll();
        //create instance
        PageControl pageControl = new PageControl("home?",CommonConst.PRODUCT_RECORD_PER_PAGE, totalPage, totalRecord, page);

        //set atttibute
        session.setAttribute("listProduct", listByCurrentPage);
        session.setAttribute("listCategories", listCategories);
        request.setAttribute("pageControl", pageControl);

        //redirect to homepage
        request.getRequestDispatcher("view/user/homepage/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
