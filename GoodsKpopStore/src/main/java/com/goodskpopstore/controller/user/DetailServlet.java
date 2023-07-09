/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.user;

import com.goodskpopstore.biz.impl.ProductLogic;
import com.goodskpopstore.entity.Product;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class DetailServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductLogic productLogic = new ProductLogic();
        //get id of prd
        try {
            int id = Integer.parseInt(request.getParameter("id"));
            //find prd by id
            Product productFoundById = productLogic.findProductById(id);
            //if productFoundById = null -> not found -> 404.jsp
            if (productFoundById == null) {
                request.setAttribute("error", "Not Found");
                request.getRequestDispatcher("view/error/404.jsp").forward(request, response);
            } else {
                //set attribute
                request.setAttribute("product", productFoundById);
                //redirect
                request.getRequestDispatcher("view/common/homepage/detail.jsp").forward(request, response);
            }
        } catch (Exception e) {
            request.setAttribute("error", "Not Found");
            request.getRequestDispatcher("view/error/404.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

}
