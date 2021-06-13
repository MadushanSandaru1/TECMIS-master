/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tecmis;

import com.mysql.jdbc.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author sanda
 */
public class Notice {
    
    java.sql.Connection con=null;
    ResultSet rs=null;
    CallableStatement cs=null;
    
    private String id = null;
    private String date = null;
    private String title = null;
    private String content = null;

    /**
     * @return the id
     */
    public String getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(String id) {
        this.id = id;
    }

    /**
     * @return the date
     */
    public String getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(String date) {
        this.date = date;
    }

    /**
     * @return the title
     */
    public String getTitle() {
        return title;
    }

    /**
     * @param title the title to set
     */
    public void setTitle(String title) {
        this.title = title;
    }

    /**
     * @return the content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param content the content to set
     */
    public void setContent(String content) {
        this.content = content;
    }
    
    public boolean createNotice()
    {
       boolean status = false;
       
       try {
            con=DBConnect.connect();
            cs = (CallableStatement) con.prepareCall("{CALL CreateNotice('"+getId()+"','"+getDate()+"','"+getTitle()+"','"+getContent()+"')}");
            rs = cs.executeQuery();
            JOptionPane.showMessageDialog(null, "Notice creation is successfully");
            status = true;
           
       } catch (SQLException ex) {
           JOptionPane.showMessageDialog(null, ex.getMessage());
       }
       return status;
    }
    
    public boolean editNotice()
    {
        boolean status = false;
       
        try {
            con=DBConnect.connect();
            String sql = "CALL UpdateNotice('"+getId()+"','"+getDate()+"','"+getTitle()+"','"+getContent()+"')";
            java.sql.PreparedStatement ps = con.prepareCall(sql);
            rs = ps.executeQuery();
            JOptionPane.showMessageDialog(null, "Notice details update is successfully");
            status = true;
           
       } catch (SQLException e) {
           JOptionPane.showMessageDialog(null, e.getMessage());
       }
       return status;
    }
    
}
