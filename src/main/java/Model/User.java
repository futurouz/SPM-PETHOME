/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Utils.ConnectionBuilder;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author azlich
 */
public class User {
    private int userId;
    private String name;
    private String surname;
    private String tel;
    private String username;
    private String password;
    private String location;
    private boolean role;
    private final static String SQL_FIND_USER_BY_ID = "SELECT * FROM USER WHERE USERID = ?";

    public User() {
    }

    public User(int userId, String name, String surname, String tel, String username, String password, String location, boolean role) {
        this.userId = userId;
        this.name = name;
        this.surname = surname;
        this.tel = tel;
        this.username = username;
        this.password = password;
        this.location = location;
        this.role = role;
    } 

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public boolean isRole() {
        return role;
    }

    public void setRole(boolean role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" + "userId=" + userId + ", name=" + name + ", surname=" + surname + ", tel=" + tel + ", username=" + username + ", password=" + password + ", location=" + location + ", role=" + role + '}';
    }
    
    public static User findUserById(int userId){
        User user = null;
        Connection con = ConnectionBuilder.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(SQL_FIND_USER_BY_ID);
            pstm.setInt(1, userId);
            ResultSet rs = pstm.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    user = new User();
                    ORM(rs,user);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(User.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }
    
    private static void ORM(ResultSet rs, User user) throws SQLException {
        user.setUserId(rs.getInt("userId"));
        user.setName(rs.getString("name"));
        user.setSurname(rs.getString("surname"));
        user.setTel(rs.getString("tel"));
        user.setUsername(rs.getString("username"));
        user.setPassword(rs.getString("password"));
        user.setLocation(rs.getString("location"));
        user.setRole(rs.getInt("role")==0?true:false);
    }
}
