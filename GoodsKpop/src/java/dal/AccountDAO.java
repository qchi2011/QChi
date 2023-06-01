/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import entity.Account;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class AccountDAO extends DBContext {

    public List<Account> findAll() {
        List<Account> list = new ArrayList<>();
        //sql
        String sql = "select * from Account";
        try {
            //ket noi voi database
            connection = getConnection();
            //chuan bi cho viec thuc th cau lenh
            statement = connection.prepareStatement(sql);
            //thuc thi cau lenh
            resultSet = statement.executeQuery();
            //lay ra tung du lieu o tung dong` trong result set va them vao arraylist
            while (resultSet.next()) {
                //username
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");

                Account account = new Account(username, password);
                list.add(account);
            }
            return list;
        } catch (SQLException e) {
            return null;
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (resultSet != null) {
                    resultSet.close();
                }
            } catch (SQLException e) {
                System.out.println("PHAM KHAC VINH: Loi o ham query");
                throw new RuntimeException(e);
            }
        }

    }

    public Account findByUsernamePassword(Account account) {
        List<Account> list = new ArrayList<>();
        //sql
        String sql = "select * from Account\n"
                + "where username = ? and password = ?";

        try {
            //ket noi voi database
            connection = getConnection();
            //chuan bi cho viec thuc th cau lenh
            statement = connection.prepareStatement(sql);
            //danh stt theo dau ? de lay du lieu trong sql
            statement.setString(1, account.getUsername());
            statement.setString(2, account.getPassword());

            //thuc thi cau lenh
            resultSet = statement.executeQuery();
            //lay ra tung du lieu o tung dong` trong result set va them vao arraylist
            while (resultSet.next()) {
                //username
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");

                Account accountFound = new Account(username, password);
                list.add(account);
            }
            //neu nhu list empty => khong tim thay bat ky record nao ca
            if (list.isEmpty()) {
                return null;
            } else {
                //neu nhu list ko empty => tim thay ket qua
                return list.get(0);
            }

        } catch (SQLException e) {
            return null;
        }
    }

    public boolean createAccount(Account accountRegister) {
        //sql
        String sql = "INSERT INTO [dbo].[Account]\n"
                + "           ([username]\n"
                + "           ,[password])\n"
                + "     VALUES\n"
                + "           (?, ? )";

        try {
            //ket noi voi database
            connection = getConnection();
            statement = connection.prepareStatement(sql);

            statement.setString(1, accountRegister.getUsername());
            statement.setString(2, accountRegister.getPassword());

            statement.executeUpdate();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (resultSet != null) {
                    resultSet.close();
                }
            } catch (SQLException e) {
                System.out.println("PHAM KHAC VINH: Loi o ham query");
                throw new RuntimeException(e);
            }
        }
    }

    public boolean isExistUsername(String username) {
        //sql
        String sql = "select * from Account where username = ?";
        try {
            //ket noi voi database
            connection = getConnection();
            //chuan bi cho viec thuc th cau lenh
            statement = connection.prepareStatement(sql);
            //danh stt theo dau ? de lay du lieu trong sql
            statement.setString(1, username);

            //thuc thi cau lenh
            resultSet = statement.executeQuery();
            //lay ra tung du lieu o tung dong` trong result set va them vao arraylist
            Account accountFound = null;
            while (resultSet.next()) {
                //username
                String usernameFound = resultSet.getString("username");
                String passwordFound = resultSet.getString("password");

                accountFound = new Account(usernameFound, passwordFound);
            }
            //neu nhu accountFound = null => ko tim thay acc trong dtb => not exist
            if (accountFound == null) {
                return false;
            }
            return true;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (resultSet != null) {
                    resultSet.close();
                }
            } catch (SQLException e) {
                System.out.println("PHAM KHAC VINH: Loi o ham query");
                throw new RuntimeException(e);
            }
        }
    }

    public List<Account> findByUsername(String searchValue) {
        List<Account> list = new ArrayList<>();
        //sql
        String sql = "select * from Account\n"
                + "where username like ?";

        try {
            //ket noi voi database
            connection = getConnection();
            //chuan bi cho viec thuc th cau lenh
            statement = connection.prepareStatement(sql);
            //danh stt theo dau ? de lay du lieu trong sql
            statement.setString(1, "%" + searchValue + "%");

            //thuc thi cau lenh
            resultSet = statement.executeQuery();
            //lay ra tung du lieu o tung dong` trong result set va them vao arraylist
            while (resultSet.next()) {
                //username
                String username = resultSet.getString("username");
                String password = resultSet.getString("password");

                Account accountFound = new Account(username, password);
                list.add(accountFound);
            }
            return list;

        } catch (SQLException e) {
            return null;
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (resultSet != null) {
                    resultSet.close();
                }
            } catch (SQLException e) {
                System.out.println("PHAM KHAC VINH: Loi o ham query");
                throw new RuntimeException(e);
            }
        }
    }

    public void removeAccount(String username) {
        //sql
        String sql = "DELETE FROM [dbo].[Account]\n"
                + "           WHERE username = ?";

        try {
            //ket noi voi database
            connection = getConnection();
            statement = connection.prepareStatement(sql);

            statement.setString(1, username);
            statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (resultSet != null) {
                    resultSet.close();
                }
            } catch (SQLException e) {
                System.out.println("PHAM KHAC VINH: Loi o ham query");
                throw new RuntimeException(e);
            }
        }
    }

    public void updateAccount(String username, String password, String oldUsername) {
        //sql
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET [username] = ?\n"
                + "      ,[password] = ?\n"
                + " WHERE username = ?";
        try {
            //ket noi voi database
            connection = getConnection();
            statement = connection.prepareStatement(sql);

            statement.setString(1, username);
            statement.setString(2, password);
            statement.setString(3, oldUsername);

            statement.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                if (connection != null) {
                    connection.close();
                }
                if (statement != null) {
                    statement.close();
                }
                if (resultSet != null) {
                    resultSet.close();
                }
            } catch (SQLException e) {
                System.out.println("PHAM KHAC VINH: Loi o ham query");
                throw new RuntimeException(e);
            }
        }
    }

}
