/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.user;

import com.goodskpopstore.dal.impl.OrderDetailsDAO;
import com.goodskpopstore.dal.impl.ProductDAO;
import com.goodskpopstore.entity.Account;
import com.goodskpopstore.entity.OrderDetails;
import com.goodskpopstore.entity.Product;
import java.io.IOException;
import java.util.HashMap;
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
public class PurchaseServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        OrderDetailsDAO orderDetailsDAO = new OrderDetailsDAO();
        ProductDAO productDAO = new ProductDAO();
        HttpSession session = request.getSession();

        //get account
        Account account = (Account) session.getAttribute("account");

        //get list product purchase by account id
        HashMap<Integer, Product> hashmapProduct = (HashMap<Integer, Product>) session.getAttribute("hashmapProduct");

        if (hashmapProduct == null) {
            hashmapProduct = productDAO.findProductsByAccountId(account.getId());
        }
        //get list orderDetails
        List<OrderDetails> listOrderDetails
                = listOrderDetails = orderDetailsDAO.findsByAccountId(account.getId());

        //set attribute to session
        session.setAttribute("listOrderDetails", listOrderDetails);
        session.setAttribute("hashmapProduct", hashmapProduct);

        response.sendRedirect("dashboard?page=purchase");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
