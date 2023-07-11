/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.user;

import com.goodskpopstore.biz.impl.AccountLogic;
import com.goodskpopstore.dal.impl.AccountDAO;
import com.goodskpopstore.entity.Account;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class ProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("view/common/dashboard2/profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        updateProfile(request, response);
        response.sendRedirect("profile");
    }

    private void updateProfile(HttpServletRequest request, HttpServletResponse response) {
        AccountLogic logic = new AccountLogic();
        String username = request.getParameter("username");
        String address = request.getParameter("address");
        String fullname = request.getParameter("fullname");
        String phone = request.getParameter("phone");
        
        //update
        try {
            logic.updateProfile(username, fullname, phone, address);
        } catch (Exception e) {
            e.printStackTrace();
        }
        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        account.setAddress(address);
        account.setFullname(fullname);
        account.setPhone(phone);
        session.setAttribute("account", account);
    }

   
}
