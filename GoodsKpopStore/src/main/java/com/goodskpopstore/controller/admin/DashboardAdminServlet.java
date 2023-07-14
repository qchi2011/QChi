/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.admin;

import com.goodskpopstore.biz.impl.CategoryLogic;
import com.goodskpopstore.biz.impl.ProductLogic;
import com.goodskpopstore.entity.Category;
import com.goodskpopstore.entity.Product;
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
public class DashboardAdminServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductLogic productLogic = new ProductLogic();
        CategoryLogic categoryLogic = new CategoryLogic();
        //get session
        HttpSession session = request.getSession();
        //get list all prd
        List<Product> listAllProducts = productLogic.findAll();
        List<Category> listCategories = categoryLogic.findAll();
        //set attribute
        session.setAttribute("listProduct", listAllProducts);
        session.setAttribute("listCategories", listCategories);

        String page = request.getParameter("page");
        System.out.println(page);
        if (page == null || page.isEmpty()) {
//            luc moi dang nhap
//            request.getRequestDispatcher("../view/admin/dashboard/index.jsp").forward(request, response);
            response.sendRedirect("../view/admin/dashboard/index.jsp");
        } else {
            switch (page) {
                case "purchase":
                    response.sendRedirect("http://localhost:8080/GoodsKpopStore/admin/purchase");
                    break;
                case "account":
                    response.sendRedirect("http://localhost:8080/GoodsKpopStore/admin/account");
                    break;
                default:
                    request.getRequestDispatcher("../view/admin/dashboard/index.jsp").forward(request, response);
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null || action.isEmpty()) {
            response.sendRedirect("admin/dashboard");
        }
        switch (action) {
            case "purchase":
                //update
//                updateProfile(request, response);
                //quay tro ve trang dashboard
                response.sendRedirect("admin/purchase");
                break;
            case "account":
                response.sendRedirect("admin/account");
                break;
            default:
                response.sendRedirect("admin/dashboard");
        }
    }

}
