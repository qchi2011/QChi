/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.admin;


import com.goodskpopstore.biz.impl.ProductLogic;
//import com.goodskpopstore.constant.CommonConst;
import com.goodskpopstore.entity.Product;
import constant.CommonConst;
import java.awt.print.Book;
import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author ADMIN
 */
@MultipartConfig
public class AddProductServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        ProductLogic bookLogic = new ProductLogic();
        Book book =new Book();
        
        //get information
        //get name
        String name = request.getParameter("name");
        //get price
        float price = Float.parseFloat(request.getParameter("price"));

        //get quantity
        int quantity = Integer.parseInt(request.getParameter("quantity"));

        //get description
        String description = request.getParameter("description");

        //get category Id
        int categoryId = Integer.parseInt(request.getParameter("category"));
        //get image
        Part part = request.getPart("image");
        
        try {
            File dir = new File(request.getServletContext().getRealPath(
                    CommonConst.SLASH + CommonConst.FOLDER_BOOK_IMAGES));
            if (!dir.exists()) {
                //tao ra duong dan do
                dir.mkdirs();
            }
            
            File image = new File(dir, part.getSubmittedFileName());
            part.write(image.getAbsolutePath());
            book.setImage(CommonConst.FOLDER_BOOK_IMAGES + CommonConst.SLASH + image.getName());
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        //setter parameter
        book.setName(name);
        book.setPrice(price);
        book.setQuantity(quantity);
        book.setDescription(description);
        book.setCategoryId(categoryId);
        
        //insert to db
        bookLogic.insertToDb(book);
        
        //redirect to homepage
        response.sendRedirect("dashboard");
        
    }

}
