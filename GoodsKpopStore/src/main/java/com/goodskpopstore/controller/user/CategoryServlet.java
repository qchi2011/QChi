/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.user;

import com.goodskpopstore.biz.impl.CategoryLogic;
import com.goodskpopstore.biz.impl.ProductLogic;
import com.goodskpopstore.entity.PageControl;
import com.goodskpopstore.entity.Product;
import com.goodskpopstore.constant.CommonConst;
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
public class CategoryServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        CategoryLogic logic = new CategoryLogic();
        ProductLogic productLogic = new ProductLogic();
        //get session
        HttpSession session = request.getSession();
        try {
            //get category id
            int categoryId = logic.findCategory(request);
            //get total record by category id
            int totalRecord = productLogic.findTotalRecordByCateId(categoryId);
            //get total page by category id
            int totalPage = productLogic.findTotalPage(totalRecord);
            //get current page
            int page = productLogic.findCurrentPage(request);
            //get list product by current page
            List<Product> listByCurrentPage = productLogic.findProductByCategory(page, categoryId);
            //create instance
            PageControl pageControl = new PageControl(
                    "category?id="+categoryId +"&",
                    CommonConst.PRODUCT_RECORD_PER_PAGE,
                    totalPage,
                    totalRecord,
                    page);
            //set attribute
            session.setAttribute("listProduct", listByCurrentPage);
            request.setAttribute("pageControl", pageControl);
            //redirect to page
            request.getRequestDispatcher("view/user/homepage/index.jsp").forward(request, response);
        } catch (IllegalArgumentException ex) {
            //redirect to 404 page
            response.sendRedirect("view/error/404.jsp");
        }

    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
    }

}
