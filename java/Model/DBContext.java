/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author tiend
 */
public class DBContext {
    Connection conn;
    public DBContext()
    {
        try {
            String url="jdbc:mysql://localhost:3306/csdl1910";
            String user="root";
            String password="";
            Class.forName("com.mysql.jdbc.Driver");
            try {
                conn=DriverManager.getConnection(url, user, password);
            } catch (SQLException ex) {
                Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ResultSet getData()
    {
          ResultSet rs=null;
          Statement st;
        try {
          
            st=conn.createStatement();
            String sql="select * from tapchi";
            rs=st.executeQuery(sql);
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
        return rs;
    }
    public void them(String matc,String tentc,String nhaxb,int namxb )
    {
        try {
            String sql ="insert into tapchi value('"+matc+"','"+tentc+"','"+nhaxb+"','"+namxb+"')";
            PreparedStatement st =conn.prepareStatement(sql);
            st.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DBContext.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
