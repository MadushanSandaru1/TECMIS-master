/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tecmis;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author sanda
 */
public class DBConnect {
    
    public static Connection connect()
    {
        Connection conn = null;
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            
            conn = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/tecmis","root","");
            
        } catch (ClassNotFoundException | SQLException e) {
            //JOptionPane.showMessageDialog(null, e);
        }
        
        return conn;
    }
}
