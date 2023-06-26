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
import java.io.PrintWriter;
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
public class SearchServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductLogic logic = new ProductLogic();
        //get session
        HttpSession session = request.getSession();
        //get keyword
        String keyword = request.getParameter("keyword");
        //get total record by keyword
        int totalRecord = logic.findTotalRecord(keyword);
        //get total page by keyword
        int totalPage = logic.findTotalPage(totalRecord);
        //get current page
        int page = logic.findCurrentPage(request);
        //get list search by keyword
        List<Product> listByCurrentPage = logic.findProductByPage(page, keyword);
        //create instance
        PageControl pageControl = new PageControl("search?keyword=" + keyword+"&",CommonConst.PRODUCT_RECORD_PER_PAGE, totalPage, totalRecord, page);
        //set atttibute
        session.setAttribute("listProduct", listByCurrentPage);
        request.setAttribute("pageControl", pageControl);
        //redirect to home page
        //response.sendRedirect("home");
        request.getRequestDispatcher("view/user/homepage/index.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
