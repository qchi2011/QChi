/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.authen;

import com.goodskpopstore.biz.impl.AccountLogic;
import com.goodskpopstore.constant.CommonConst;
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
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("view/common/authen/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        AccountLogic accountLogic = new AccountLogic();
        //get information from form
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");

        //create instance account
              Account account = Account.builder().username(username).password(password).email(email).roleid(CommonConst.ROLE_USER).build();
//        accountLogic.insertToDb(account);
        try {
           accountLogic.insertToDb(account);

            //username or email not exist
        } catch (IllegalArgumentException e) {
            //set error
            request.setAttribute("err2", e.getMessage());
            //redirect register
            request.getRequestDispatcher("view/common/authen/login.jsp").forward(request, response);
        } catch (Exception e) {

        }
    }

}
