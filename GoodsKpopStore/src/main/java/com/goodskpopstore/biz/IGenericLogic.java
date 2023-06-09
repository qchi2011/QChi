/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.goodskpopstore.biz;

import java.util.List;

/**
 *
 * @author Admin
 */
public interface IGenericLogic<T> {

    List<T> findAll();

    int insertToDb(T t);
    
    void updateToDb(T t);
    
    void delete(T t);
}
