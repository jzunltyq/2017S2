/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package register;

import DbConnection.DbConnection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author NHCM
 */
public class checkvalid {
    DbConnection conn;
    public checkvalid() throws ClassNotFoundException, SQLException{
    conn = new DbConnection();
    
    }
    public boolean check(String email) throws SQLException{
        Statement stm = conn.connection.createStatement();
        ResultSet re= stm.executeQuery("select * from users");
        while (re.next()){
        if(email.equals(re.getString(2)))
            return false;
        }
        return true;
}
}
