/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.admin;

import com.goodskpopstore.dal.impl.OrderDAO;
import com.goodskpopstore.dal.impl.OrderDetailsDAO;
import com.goodskpopstore.dal.impl.ProductDAO;
import com.goodskpopstore.entity.Order;
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
public class AdminPurchaseServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("tu xoa order sang");
        OrderDAO orderDAO = new OrderDAO();
        OrderDetailsDAO orderDetailsDAO = new OrderDetailsDAO();
        ProductDAO productDAO = new ProductDAO();
        HttpSession session = request.getSession();
//      get list order 
        List<Order> listOrder = orderDAO.findAllExist();
        //get list orderDetails
//        List<OrderDetails> listOrderDetails = orderDetailsDAO.findAll();
        List<Product> listProduct = productDAO.findProductByStatus();
        //set attribute to session
        session.setAttribute("listOrder", listOrder);
        session.setAttribute("ProductDAO", productDAO);
        session.setAttribute("OrderDetailsDAO", orderDetailsDAO);
//        session.setAttribute("listOrderDetails", listOrderDetails);
        session.setAttribute("listProduct", listProduct);

//        response.sendRedirect("dashboard?page=purchase");
        response.sendRedirect("../view/user/dashboard/purchase.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }
}
