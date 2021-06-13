/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tecmis;

import com.mysql.jdbc.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;
import javax.swing.JOptionPane;

/**
 *
 * @author sanda
 */
public class Attendance {
    
    java.sql.Connection con=null;
    ResultSet rs=null;
    PreparedStatement ps = null;
    CallableStatement cs=null;
    
    private String dept = null;
    private String level = null;
    
    private String stu_id = null;
    private String course_id = null;
    private String type = null;
    private String date = null;
    private int hours = 0;
    private int status = 0;

    /**
     * @return the dept
     */
    public String getDept() {
        return dept;
    }

    /**
     * @param dept the dept to set
     */
    public void setDept(String dept) {
        this.dept = dept;
    }

    /**
     * @return the level
     */
    public String getLevel() {
        return level;
    }

    /**
     * @param level the level to set
     */
    public void setLevel(String level) {
        this.level = level;
    }

    /**
     * @return the stu_id
     */
    public String getStu_id() {
        return stu_id;
    }

    /**
     * @param stu_id the stu_id to set
     */
    public void setStu_id(String stu_id) {
        this.stu_id = stu_id;
    }

    /**
     * @return the course_id
     */
    public String getCourse_id() {
        return course_id;
    }

    /**
     * @param course_id the course_id to set
     */
    public void setCourse_id(String course_id) {
        this.course_id = course_id;
    }

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
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
     * @return the hours
     */
    public int getHours() {
        return hours;
    }

    /**
     * @param hours the hours to set
     */
    public void setHours(int hours) {
        this.hours = hours;
    }

    /**
     * @return the status
     */
    public int getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(int status) {
        this.status = status;
    }
    
    public boolean createAttendance()
    {
       boolean flag = false;
       
       try {
            con=DBConnect.connect();
            cs = (CallableStatement) con.prepareCall("{call CreateAttendance('"+getDept()+"','"+getLevel()+"','"+getStu_id()+"','"+getCourse_id()+"','"+getType()+"','"+getDate()+"','"+getHours()+"',"+getStatus()+")}");
            rs = cs.executeQuery();
            System.out.println("successful");
            flag = true;
           
       } catch (SQLException ex) {
           JOptionPane.showMessageDialog(null, ex.getMessage());
           System.out.println("unsuccessful");
       }
       
       return flag;
    }
    
    public boolean createMedical()
    {
       boolean flag = false;
       
       try {
            con=DBConnect.connect();
            cs = (CallableStatement) con.prepareCall("{call CreateMedical('"+getDept()+"','"+getLevel()+"','"+getStu_id()+"','"+getCourse_id()+"','"+getType()+"','"+getDate()+"',"+getHours()+")}");
            rs = cs.executeQuery();
            System.out.println("successful");
            flag = true;
           
       } catch (SQLException ex) {
           JOptionPane.showMessageDialog(null, ex.getMessage());
           System.out.println("unsuccessful");
       }
       
       return flag;
    }
}
