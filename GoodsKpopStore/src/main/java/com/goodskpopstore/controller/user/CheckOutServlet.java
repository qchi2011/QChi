/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.user;

import com.goodskpopstore.dal.impl.OrderDAO;
import com.goodskpopstore.dal.impl.OrderDetailsDAO;
import com.goodskpopstore.entity.Account;
import com.goodskpopstore.entity.ItemCart;
import com.goodskpopstore.entity.Order;
import com.goodskpopstore.entity.OrderDetails;
import java.io.IOException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class CheckOutServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("view/user/cart/checkout2.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        OrderDAO orderDAO = new OrderDAO();
        OrderDetailsDAO orderDetailsDAO = new OrderDetailsDAO();

        //get information 
        String note = request.getParameter("note");

        //get account on session
        Account account = (Account) session.getAttribute("account");
        //get cart on session
        HashMap<Integer, ItemCart> cart = (HashMap<Integer, ItemCart>) session.getAttribute("cart");
        //calculate total amount of cart
        float amount = calculateTotalAmount(cart);

        //create order and insert to DB ( return id of order)
        Order order = Order.builder().
                amount(amount).
                description(note).
                createAt(Timestamp.valueOf(LocalDateTime.now())).
                accountId(account.getId()).
                build();
        int orderId = orderDAO.insertToDb(order);
        //create order details for each item in cart and insert to DB
        for (Map.Entry<Integer, ItemCart> entry : cart.entrySet()) {
            int key = entry.getKey();
            ItemCart val = entry.getValue();
            OrderDetails orderDetails = OrderDetails.builder().
                    quantity(val.getQuantity()).
                    productId(key).
                    orderId(orderId).
                    build();
            orderDetailsDAO.insertToDb(orderDetails);
        }

        //go to dashboard
//        response.sendRedirect("home");
        request.getRequestDispatcher("view/user/cart/success.jsp").forward(request, response);
        session.removeAttribute("cart");
    }

    private float calculateTotalAmount(HashMap<Integer, ItemCart> cart) {
        float total = 0;
        for (Map.Entry<Integer, ItemCart> entry : cart.entrySet()) {
            int key = entry.getKey();
            ItemCart val = entry.getValue();
            total += val.getAmount();
        }
        return total;
    }

}