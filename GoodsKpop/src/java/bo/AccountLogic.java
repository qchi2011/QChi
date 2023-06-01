/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package bo;

import dal.AccountDAO;
import entity.Account;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class AccountLogic {

    public Account findByUsernamePassword(String username, String password) {
        //create instance
        Account account = new Account(username, password);
        AccountDAO dao = new AccountDAO();
        //find by username and password
        Account accountFound = dao.findByUsernamePassword(account);
        return accountFound;
    }

    public boolean createAccount(String username, String password) {
        //create instance
        Account accountRegister = new Account(username, password);
        AccountDAO dao = new AccountDAO();
        //check username exist
        boolean isExistUsername = dao.isExistUsername(username);
        //if isExistUsername = true =>tra ve bao loi
        if(isExistUsername){
            throw new IllegalArgumentException("username was exist");
        }     
        //create account
        boolean isSuccess = dao.createAccount(accountRegister);
        //chi khi isExistUsername = false(k ton tai trong dtb)
        //isSuccess = true(tao thanh cong tai khoan)
        //tao thanh cong
        if(!isExistUsername && isSuccess){
            return true;
        }else{
            return false;
        }
    }

    public List<Account> findAll() {
        AccountDAO dao = new AccountDAO();
        List<Account> list = dao.findAll();
        return list;
    }

    public List<Account> findByUsername(String searchValue) {
        AccountDAO dao = new AccountDAO();
        List<Account> listFound = dao.findByUsername(searchValue);
       return listFound;
    }

    public void removeByUsername(String username) {
        AccountDAO dao = new AccountDAO();
        dao.removeAccount(username);
    }

    public Boolean updateAccount(String username, String password, String oldUsername) {
        AccountDAO dao = new AccountDAO();
        boolean isExistUsername = dao.isExistUsername(username);
        
        if(isExistUsername){
            return false;
        }else{
            dao.updateAccount(username,password, oldUsername);
            return true;
        }
    }


    

}

