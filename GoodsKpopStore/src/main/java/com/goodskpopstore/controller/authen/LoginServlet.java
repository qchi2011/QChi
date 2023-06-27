/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.authen;

import com.goodskpopstore.biz.impl.AccountLogic;
import com.goodskpopstore.entity.Account;
import com.goodskpopstore.constant.CommonConst;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Admin
 */
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("view/common/authen/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AccountLogic accountLogic = new AccountLogic();
        HttpSession session = request.getSession();
        //get username
        String username = request.getParameter("username");
        //get password
        String password = request.getParameter("password");
        //get rem
        String remember = request.getParameter("remember");
        //create cookie for username and password
        Cookie cuser = new Cookie("username", username);
        cuser.setMaxAge(60 * 60 * 24);
        Cookie cpass = new Cookie("password", password);
        if (remember != null) {
            cpass.setMaxAge(60 * 60 * 24);
        } else {
            cuser.setMaxAge(0);
            cpass.setMaxAge(0);
        }
        response.addCookie(cuser);
        response.addCookie(cpass);
        //create instance
        Account account = Account.builder().username(username).password(password).build();
        account = accountLogic.findAccount(account, CommonConst.FIND_ACCOUNT_BY_USERNAME_PASSWORD);
        //check username and password is exist
        if (account != null) {
            //set session
            session.setAttribute(CommonConst.SESSION_ACCOUNT, account);
            //go to page corresponding to role
            switch (account.getRoleid()) {
                case CommonConst.ROLE_ADMIN:
                    response.sendRedirect("admin/dashboard");
                    break;
                case CommonConst.ROLE_USER:
                    response.sendRedirect("home");
                    break;
            }
            //account not exist
        } else {
            request.setAttribute("err", "Username or password incorrect !");
            request.getRequestDispatcher("view/common/authen/login.jsp").forward(request, response);
        }

    }

}
