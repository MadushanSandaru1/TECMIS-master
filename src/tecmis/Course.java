/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tecmis;

import com.mysql.jdbc.CallableStatement;
import java.sql.ResultSet;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author sanda
 */
public class Course {
    
    java.sql.Connection con=null;
    ResultSet rs=null;
    PreparedStatement ps = null;
    CallableStatement cs=null;
    
    private String deptId = null;
    private String level = null;
    private String id = null;
    private String title = null;
    private String lecId = null;
    private String credit = null;
    private int quiz = 0;
    private int assess = 0;
    private int mid = 0;
    private int theory = 0;
    private int practical = 0;

    /**
     * @return the deptId
     */
    public String getDeptId() {
        return deptId;
    }

    /**
     * @param deptId the deptId to set
     */
    public void setDeptId(String deptId) {
        this.deptId = deptId;
    }
    
    /**
     * @return the level
     */
    public String getLevel() {
        return level;
    }

    /**
     * @param level the deptId to set
     */
    public void setLevel(String lev) {
        this.level = lev;
    }

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
     * @return the lecId
     */
    public String getLecId() {
        return lecId;
    }

    /**
     * @param lecId the lecId to set
     */
    public void setLecId(String lecId) {
        this.lecId = lecId;
    }

    /**
     * @return the credit
     */
    public String getCredit() {
        return credit;
    }

    /**
     * @param credit the credit to set
     */
    public void setCredit(String credit) {
        this.credit = credit;
    }

    /**
     * @return the quiz
     */
    public int getQuiz() {
        return quiz;
    }

    /**
     * @param quiz the quiz to set
     */
    public void setQuiz(int quiz) {
        this.quiz = quiz;
    }

    /**
     * @return the assess
     */
    public int getAssess() {
        return assess;
    }

    /**
     * @param assess the assess to set
     */
    public void setAssess(int assess) {
        this.assess = assess;
    }

    /**
     * @return the mid
     */
    public int getMid() {
        return mid;
    }

    /**
     * @param mid the mid to set
     */
    public void setMid(int mid) {
        this.mid = mid;
    }

    /**
     * @return the theory
     */
    public int getTheory() {
        return theory;
    }

    /**
     * @param theory the theory to set
     */
    public void setTheory(int theory) {
        this.theory = theory;
    }

    /**
     * @return the practical
     */
    public int getPractical() {
        return practical;
    }

    /**
     * @param practical the practical to set
     */
    public void setPractical(int practical) {
        this.practical = practical;
    }
    
    public boolean createCourse()
    {
       boolean status = false;
       
       try {
            con=DBConnect.connect();
            cs = (CallableStatement) con.prepareCall("{call CreateCourse('"+getId()+"','"+getTitle()+"','"+getLecId()+"','"+getCredit()+"','"+getDeptId()+"','"+getLevel()+"',"+getQuiz()+","+getAssess()+","+getMid()+","+getTheory()+","+getPractical()+")}");
            rs = cs.executeQuery();
            JOptionPane.showMessageDialog(null, "Course creation is successfully");
            status = true;
           
       } catch (SQLException ex) {
           JOptionPane.showMessageDialog(null, ex.getMessage());
       }
       return status;
    }
    
    public boolean editCourse()
    {
        boolean status = false;
       
        try {
            con=DBConnect.connect();
            String sql = "CALL `UpdateCourse`('"+getId()+"','"+getTitle()+"','"+getLecId()+"','"+getCredit()+"','"+getDeptId()+"','"+getLevel()+"',"+getQuiz()+","+getAssess()+","+getMid()+","+getTheory()+","+getPractical()+")";
            ps = con.prepareCall(sql);
            rs = ps.executeQuery();
            JOptionPane.showMessageDialog(null, "Course details update is successfully");
            status = true;
           
       } catch (SQLException e) {
           JOptionPane.showMessageDialog(null, e.getMessage());
       }
       return status;
    }
}
