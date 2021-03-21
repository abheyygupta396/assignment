/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Bin.UserBin;
import conn.MyConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserDao {
   
      public int insert_patient(UserBin ub)throws ClassNotFoundException,SQLException{
    
        Connection con=MyConnection.getConnection();
        
        String query="insert into patient(name,address,email,phone,password) values(?,?,?,?,?)";
        
        PreparedStatement ps=con.prepareStatement(query);
        
        ps.setString(1, ub.getName());
        ps.setString(2, ub.getAddress());
        ps.setString(3, ub.getEmail());
        ps.setString(4, ub.getPhone());
        ps.setString(5, ub.getPassword());
       
               
        int i=ps.executeUpdate();
      
        return i;
     }
}
