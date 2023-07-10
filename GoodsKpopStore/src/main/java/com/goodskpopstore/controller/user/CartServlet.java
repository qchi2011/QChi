/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.user;

import com.goodskpopstore.dal.impl.ProductDAO;
import com.goodskpopstore.entity.OrderDetails;
import com.goodskpopstore.entity.Product;
import java.io.IOException;
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
public class CartServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        request.getRequestDispatcher("view/user/cart/cart.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //GET ACtion
        String action = request.getParameter("action");
        if (action == null || action.isEmpty()) {
            response.sendRedirect("home");
        }

        switch (action) {
            case "add-product":
                addProduct(request, response);
                response.sendRedirect("cart");
                break;
            default:
                throw new AssertionError();
        }
    }

    private void addProduct(HttpServletRequest request, HttpServletResponse response) {
        ProductDAO dao = new ProductDAO();
        HttpSession session = request.getSession();
        //get quantity
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        //get id
        int id = Integer.parseInt(request.getParameter("id"));

        //find product by id
        Product product = dao.findOneById(id);

        //1 san pham o ben trong cart
        OrderDetails orderDetails = new OrderDetails(product, quantity);

        //get ra cart
        HashMap<Integer, OrderDetails> cart = (HashMap<Integer, OrderDetails>) session.getAttribute("cart");
        //kiem tra neu chua tung co cart
        if (cart == null) {
            cart = new HashMap<>();
        }
        //put orderdeatils vao ben trong cart
        addOrderDetails(orderDetails, cart, quantity);

        session.setAttribute("cart", cart);
        for (Map.Entry<Integer, OrderDetails> entry : cart.entrySet()) {
            Object key = entry.getKey();
            Object val = entry.getValue();
//            System.out.println(val);
//            System.out.println(cart.size());
        }
    }

    public void addOrderDetails(OrderDetails orderDetails, HashMap<Integer, OrderDetails> cart, int quantity) {
        int idProductInOrderDetails = orderDetails.getProduct().getId();
        //kiem tra xem trong cart da tung co sn pham hay chua
        //neu da co san pham roi, thi + don` so luong
        if (cart.containsKey(idProductInOrderDetails)) {
            int oldQUantity = cart.get(idProductInOrderDetails).getQuantity();
            OrderDetails orderDetailsInCart = cart.get(idProductInOrderDetails);
            orderDetailsInCart.setQuantity(oldQUantity + quantity);
            //neu chua thi moi mang di put
        } else {
            cart.put(idProductInOrderDetails, orderDetails);
        }
    }



}
