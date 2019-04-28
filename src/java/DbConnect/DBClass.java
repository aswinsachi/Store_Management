/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package DbConnect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author user
 */
public class DBClass {
    Connection con=null;
    public DBClass() throws Exception {
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/starbuks","root","");
        System.out.println("connected");
    }
    public int ExecuteQueriess(String sql) throws Exception
 {
     System.out.println(sql);
     PreparedStatement ps=con.prepareStatement(sql);
     int i=ps.executeUpdate();
     System.out.println(i);
     return i;
     
 }
    public ResultSet Retrievedata(String sql) throws Exception
 {
     PreparedStatement ps=con.prepareStatement(sql);
     ResultSet i=ps.executeQuery();
     return i;
     
 }
}
