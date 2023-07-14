/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.admin;

import com.goodskpopstore.dal.impl.AccountDAO;
import com.goodskpopstore.entity.Account;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
public class DeleteAccountServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("delete account servlet");
        AccountDAO accountDAO = new AccountDAO();
        //get infomation
        int id = Integer.parseInt(request.getParameter("id"));
        //create instance
        Account account = Account.builder().id(id).build();
        //delete prd
        accountDAO.delete(account);
        
        response.sendRedirect("http://localhost:8080/GoodsKpopStore/admin/account");
    }

}
