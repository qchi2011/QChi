/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.admin;

import com.goodskpopstore.biz.impl.ProductLogic;
import com.goodskpopstore.entity.Product;
import java.io.IOException;
import java.io.PrintWriter;
import javafx.scene.paint.Color;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class DeleteProductServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductLogic productLogic = new ProductLogic();
        //get infomation
        int id = Integer.parseInt(request.getParameter("id"));
        //create instance
        Product product = Product.builder().id(id).build();
        //delete prd
        productLogic.delete(product);
        
        response.sendRedirect("dashboard");
    }

}
