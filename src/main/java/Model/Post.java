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
import java.sql.SQLException;
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
    private Date timestamp;
    final static String SQL_SAVE_POST = "INSERT INTO Post(postId,userId,petId,content,location,timestamp) VALUE(?,?,?,?,?,?,?)";
    
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

    public Date getTimesstamp() {
        return timestamp;
    }

    public void setTimesstamp(Date timesstamp) {
        this.timestamp = timesstamp;
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
            pstm.setDate(6, p.getTimestamp());
            pstm.execute();
            con.close();
        } catch (SQLException ex) {
            Logger.getLogger(Post.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
