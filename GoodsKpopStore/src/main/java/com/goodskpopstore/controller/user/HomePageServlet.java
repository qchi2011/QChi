/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.user;

import com.goodskpopstore.biz.impl.ProductLogic;
import com.goodskpopstore.entity.PageControl;
import com.goodskpopstore.entity.Product;
import constant.CommonConst;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class HomePageServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductLogic productLogic = new ProductLogic();

        //get total product in dtb
        int totalRecord = productLogic.findTotalRecord();

        //get total page
        int totalPage = productLogic.findTotalPage(totalRecord);

        //get current page
        int page = productLogic.findCurrentPage(request);

        //get list product by currentpage
        List<Product> listByCurrentPage = productLogic.findProductByPage(page);
        
        //create instance
        PageControl pageControl = new PageControl(CommonConst.PRODUCT_RECORD_PER_PAGE, totalPage, totalRecord, page);

        //set atttibute
        request.setAttribute("listProduct",listByCurrentPage);
        request.setAttribute("pageControl", pageControl);

        //redirect to homepage
        request.getRequestDispatcher("view/user/homepage/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
