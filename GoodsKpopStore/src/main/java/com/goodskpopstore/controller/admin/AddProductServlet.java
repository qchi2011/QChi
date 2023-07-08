/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.goodskpopstore.controller.admin;


import com.goodskpopstore.biz.impl.ProductLogic;
//import com.goodskpopstore.constant.CommonConst;
import com.goodskpopstore.entity.Product;
import com.goodskpopstore.constant.CommonConst;
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
        ProductLogic productLogic = new ProductLogic();
        Product product =new Product();
        
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
            //tao duong dan de add image
            File dir = new File(request.getServletContext().getRealPath(
                    CommonConst.SLASH + CommonConst.FOLDER_PRODUCT_IMAGES));
            //neu chua ton tai duong dan
            if (!dir.exists()) {
                //tao ra duong dan do
                dir.mkdirs();
            }
            //lay ra ten cua file image
            File image = new File(dir, part.getSubmittedFileName());
            part.write(image.getAbsolutePath());
            //set link image
            product.setImage("/GoodsKpopStore/" + CommonConst.FOLDER_PRODUCT_IMAGES + CommonConst.SLASH + image.getName());
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        //setter parameter
        product.setName(name);
        product.setPrice(price);
        product.setQuantity(quantity);
        product.setDescription(description);
        product.setCategoryId(categoryId);
        
        //insert to db
        productLogic.insertToDb(product);
        
        //redirect to homepage
        response.sendRedirect("dashboard");
        
    }

}
