/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DbConnection;
import java.sql.*;
import static org.apache.xml.security.Init.init;

/**
 *
 * @author Minh
 */
public class DbConnection {

    public static Connection DbConnection;
    public Connection connection;
    String driverName = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/forum";
    String user = "root";
    String dbpsw = "admin";
    public DbConnection() throws ClassNotFoundException, SQLException{
    try{
    Class.forName(driverName);
    connection = DriverManager.getConnection(url, user, dbpsw);
    System.out.print("connection sucess");
    
    }
    catch(SQLException sqe){
    System.out.print("Wrong in create connection");
    }
    }
    
   
}

