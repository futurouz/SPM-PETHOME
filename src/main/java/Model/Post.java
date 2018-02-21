/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Utils.ConnectionBuilder;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author KN
 */
public class Post {

    private int postId;
    private int userId;
    private int petId;
    private String content;
    private String location;
    private String type;
    private String sex;
    private String age;
    private String vaccine;
    private Date date;
    private final static String SQL_SAVE_POST = "INSERT INTO Post(postId,userId,content,location,date) VALUE(?,?,?,?,?)";
    private final static String SQL_QUERY_POST = "SELECT * FROM POST ORDER BY date LIMIT ?,?";
    private final static String SQL_QUERY_POST_BY_ID = "SELECT * FROM POST WHERE POSTID = ?";

    public Post() {
    }

    public Post(int postid, int userId, int petId, String content, String location, Date date) {
        this.postId = postid;
        this.userId = userId;
        this.petId = petId;
        this.content = content;
        this.location = location;
        this.date = date;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getAge() {
        return age;
    }

    public void setAge(String age) {
        this.age = age;
    }

    public String getVaccine() {
        return vaccine;
    }

    public void setVaccine(String vaccine) {
        this.vaccine = vaccine;
    }

    public static void store(Post p, User u) {
        Connection con = ConnectionBuilder.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(SQL_SAVE_POST);
            pstm.setInt(1, p.getPostId());
            pstm.setInt(2, u.getUserId());
            pstm.setString(3, p.getContent());
            pstm.setString(4, p.getLocation());
//            pstm.setString(6    , p.getType());
//            pstm.setString(7, p.getSex());
//            pstm.setString(8, p.getAge());
//            pstm.setString(9, p.getVaccine());
            pstm.setDate(5, java.sql.Date.valueOf(java.time.LocalDate.now()));
            pstm.executeUpdate();
            pstm.close();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Post.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static ArrayList<PostOfUser> queryPost(int startPost) {
        Connection con = ConnectionBuilder.getConnection();
        Post post = new Post();
        User user = new User();
        PostOfUser pou = null;
        ResultSet rs = null;
        ArrayList<PostOfUser> posts = new ArrayList<>();
        try {
            PreparedStatement pstm = con.prepareStatement(SQL_QUERY_POST);
            pstm.setInt(1, startPost - 1 == 0 ? 0 : startPost * 10);
            pstm.setInt(2, startPost * 10);
            posts = new ArrayList<>();
            rs = pstm.executeQuery();
            if (rs != null) {
                while (rs.next()) {
                    ORM(rs, post);
                    user = User.findUserById(post.getUserId());
                    pou = new PostOfUser(post, user);
                    posts.add(pou);
                }
            }
            rs.close();
            pstm.close();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Post.class.getName()).log(Level.SEVERE, null, ex);
        }
        return posts;
    }

    public static PostOfUser queryPostById(int postId) {
        Connection con = ConnectionBuilder.getConnection();
        Post post = null;
        User user = null;
        PostOfUser pou = null;
        ResultSet rs = null;
        try {
            PreparedStatement pstm = con.prepareStatement(SQL_QUERY_POST_BY_ID);
            pstm.setInt(1, postId);
            rs = pstm.executeQuery();
            if (rs != null) {
                post = new Post();
                while (rs.next()) {
                    ORM(rs, post);
                    user = User.findUserById(post.getUserId());
                    pou = new PostOfUser(post, user);
                }
            }
            rs.close();
            pstm.close();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Post.class.getName()).log(Level.SEVERE, null, ex);
        }
        return pou;
    }

    private static void ORM(ResultSet rs, Post post) throws SQLException {
        post.setPostId(rs.getInt("postId"));
        post.setUserId(rs.getInt("userId"));
        post.setContent(rs.getString("content"));
        post.setLocation(rs.getString("location"));
        post.setType(rs.getString("type"));
        post.setSex(rs.getString("sex"));
        post.setAge(rs.getString("age"));
        post.setVaccine(rs.getString("vaccine"));
        post.setDate(rs.getDate("date"));
    }

}
