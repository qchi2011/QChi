/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.admin;

import com.goodskpopstore.dal.impl.AccountDAO;
import com.goodskpopstore.entity.Account;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Admin
 */
@MultipartConfig
public class EditAccountServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AccountDAO accountDAO = new AccountDAO();
        Account account = new Account();
        //get information
        //get id
        int id = Integer.parseInt(request.getParameter("idEdit"));
        //get nusernameame
        String username = request.getParameter("usernameEdit");
        //get password
        String password = request.getParameter("passwordEdit");
        //get email
        String email = request.getParameter("emailEdit");
        //get fullname
        String fullname = request.getParameter("fullnameEdit");
        //get phone
        String phone = request.getParameter("phoneEdit");
        //get address
        String address = request.getParameter("addressEdit");

        //setter parameter
        account.setId(id);
        account.setUsername(username);
        account.setPassword(password);
        account.setEmail(email);
        account.setFullname(fullname);
        account.setPhone(phone);
        account.setAddress(address);
        //update to db
        accountDAO.updateToDb(account);

        //redirect to homepage
        response.sendRedirect("http://localhost:8080/GoodsKpopStore/admin/account");

    }

}
