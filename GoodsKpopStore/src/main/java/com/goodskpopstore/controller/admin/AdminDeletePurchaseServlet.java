/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.admin;

import com.goodskpopstore.dal.impl.OrderDAO;
import com.goodskpopstore.entity.Order;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class AdminDeletePurchaseServlet extends HttpServlet {
  @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        OrderDAO orderDAO= new OrderDAO();
        //get infomation
        int id = Integer.parseInt(request.getParameter("orderId"));
        
        System.out.println("Servlet: AdminDeletePurchase: " + id);
        
        //create instance
        Order order = Order.builder().id(id).build();
        
        System.out.println("Servlet: AdminDeletePurchase: " + order.toString());
        
        //delete prd
        orderDAO.updateToDb(order);
        
        response.sendRedirect("admin/purchase");
//        response.sendRedirect("view/user/dashboard/purchase.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }



}
