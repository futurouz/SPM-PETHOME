/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

public class ConnectionBuilder {

    public static Connection getConnection() {
        Connection con = null;
        ClassLoader classLoader = Thread.currentThread().getContextClassLoader();
        InputStream input = classLoader.getResourceAsStream("env.properties");
        Properties prop = new Properties();
        try {
            prop.load(input);
            Class.forName("com.mysql.jdbc.Driver");
            String dbIp = prop.getProperty("PETHOME_DB_IP");
            String dbName = prop.getProperty("PETHOME_DB_NAME");
            String dbUsername = prop.getProperty("PETHOME_DB_USER");
            String dbPassword = prop.getProperty("PETHOME_DB_PASS");
            String dbPort = prop.getProperty("PETHOME_DB_PORT");
            con = DriverManager.getConnection("jdbc:mysql://" + dbIp + ":" + dbPort + "/" 
                    + dbName + "?zeroDateTimeBehavior=convertToNull", dbUsername, dbPassword);
        } catch (SQLException | ClassCastException | ClassNotFoundException | IOException err) {
            System.err.println(err);
        }

        return con;
    }
}
