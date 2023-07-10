/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.user;

import com.goodskpopstore.biz.impl.AccountLogic;
import com.goodskpopstore.entity.Account;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class DashboardServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        String page = request.getParameter("page");
//        if (page == null || page.isEmpty()) {
//            request.getRequestDispatcher("view/user/dashboard/index.jsp").forward(request, response);
//        }
//
//        switch(page) {
//            case "profile":
//                request.getRequestDispatcher("view/common/dashboard/profile.jsp").forward(request, response);
//                break;
//            default:
//                throw new AssertionError();
//        }
        request.getRequestDispatcher("view/common/dashboard2/profile.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
//        String action = request.getParameter("action");
//        if (action == null || action.isEmpty()) {
//            response.sendRedirect("dashboard");
//        }
//        switch (action) {
//            case "profile":
//                //update
//                updateProfile(request, response);
//                //quay tro ve trang dashboard
//                response.sendRedirect("dashboard?page=profile");
//                break;
//            default:
//                throw new AssertionError();
//        }
        updateProfile(request, response);
        response.sendRedirect("dashboard");
    }

    private void updateProfile(HttpServletRequest request, HttpServletResponse response) {
        AccountLogic logic = new AccountLogic();
        String address = request.getParameter("address");
        String username = request.getParameter("username");
        try {
            logic.updateAddress(username, address);

        } catch (Exception e) {
            e.printStackTrace();
        }

        HttpSession session = request.getSession();
        Account account = (Account) session.getAttribute("account");
        account.setAddress(address);
        session.setAttribute("account", account);
    }

}
