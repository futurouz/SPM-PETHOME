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
    private Date timestamp;
    final static String SQL_SAVE_POST = "INSERT INTO Post(postId,userId,petId,content,location,type,sex,age,vaccine,timestamp) VALUE(?,?,?,?,?,?,?,?,?,?,?)";
    final static String SQL_QUERY_POST = "SELECT * FROM POST ORDER BY timestamp LIMIT ?,?";

    public Post() {
    }

    public Post(int postid, int userId, int petId, String content, String location, Date timesstamp) {
        this.postId = postid;
        this.userId = userId;
        this.petId = petId;
        this.content = content;
        this.location = location;
        this.timestamp = timesstamp;
    }

    public int getPostId() {
        return postId;
    }

    public void setPostId(int postId) {
        this.postId = postId;
    }

    public Date getTimestamp() {
        return timestamp;
    }

    public void setTimestamp(Date timestamp) {
        this.timestamp = timestamp;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getPetId() {
        return petId;
    }

    public void setPetId(int petId) {
        this.petId = petId;
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
    

    public static void store(Post p) {
        Connection con = ConnectionBuilder.getConnection();
        try {
            PreparedStatement pstm = con.prepareStatement(SQL_SAVE_POST);
            pstm.setInt(1, p.getPostId());
            pstm.setInt(2, p.getUserId());
            pstm.setInt(3, p.getPetId());
            pstm.setString(4, p.getContent());
            pstm.setString(5, p.getLocation());
            pstm.setString(6, p.getType());
            pstm.setString(7, p.getSex());
            pstm.setString(8, p.getAge());
            pstm.setString(9, p.getVaccine());
            pstm.setDate(10, p.getTimestamp());
            pstm.execute();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Post.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public static ArrayList<Post> queryPost(int startPost) {
        Connection con = ConnectionBuilder.getConnection();
        ArrayList<Post> posts = null;
        Post post = new Post();
        ResultSet rs = null;
        try {
            PreparedStatement pstm = con.prepareStatement(SQL_QUERY_POST);
            pstm.setInt(1, startPost - 1);
            pstm.setInt(2, startPost - 1 == 0 ? startPost + 10 : startPost * 10);
            rs = pstm.executeQuery();
            while (rs.next()) {
                ORM(rs, post);
                posts.add(post);
            }
        } catch (SQLException ex) {
            Logger.getLogger(Post.class.getName()).log(Level.SEVERE, null, ex);
        }
        return posts;
    }

    private static void ORM(ResultSet rs, Post post) throws SQLException {
        post.setPostId(rs.getInt("postId"));
        post.setUserId(rs.getInt("userId"));
        post.setPetId(rs.getInt("petId"));
        post.setContent(rs.getString("content"));
        post.setLocation(rs.getString("location"));
        post.setType(rs.getString("type"));
        post.setSex(rs.getString("sex"));
        post.setAge(rs.getString("age"));
        post.setVaccine(rs.getString("vaccine"));
        post.setTimestamp(rs.getDate("timestamp"));

    }
}
