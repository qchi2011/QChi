/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.user;

import com.goodskpopstore.biz.impl.AccountLogic;
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
public class DashboardServlet extends HttpServlet {

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //get page
        String page = request.getParameter("page");
        if (page == null || page.isEmpty()) {
            request.getRequestDispatcher("view/user/dashboard/index.jsp").forward(request, response);
        }

        switch (page) {
            case "profile":
                request.getRequestDispatcher("view/common/dashboard/profile.jsp").forward(request, response);
                break;
            case "purchase":
                request.getRequestDispatcher("view/user/dashboard/purchase.jsp").forward(request, response);
                break;
            default:
                request.getRequestDispatcher("view/user/dashboard/index.jsp").forward(request, response);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null || action.isEmpty()) {
            response.sendRedirect("dashboard");
        }
        switch (action) {
//            case "profile":
//                //update
//                updateProfile(request, response);
//                //quay tro ve trang dashboard
//                response.sendRedirect("dashboard?page=profile");
//                break;
            default:
                response.sendRedirect("dashboard");
        }

    }
//
//    private void updateProfile(HttpServletRequest request, HttpServletResponse response) {
//        AccountLogic logic = new AccountLogic();
//        String address = request.getParameter("address");
//        String username = request.getParameter("username");
//        
//        //update
//        logic.updateAddress(username, address);
//        
//        //set session for account
//        HttpSession session = request.getSession();
//        Account account = (Account) session.getAttribute("account");
//        account.setAddress(address);
//        session.setAttribute("account", account);
//
//    }

}

