/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tecmis;

import com.mysql.jdbc.CallableStatement;
import com.mysql.jdbc.PreparedStatement;
import java.sql.*;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;
import javax.swing.JTextField;

/**
 *
 * @author sanda
 */
public class User {
    
    Connection con=null;
    ResultSet rs=null;
    CallableStatement cs=null;
    PreparedStatement ps = null;
    
    private String id;
    private String role;
    private String fName;
    private String lName;
    private String dob;
    private String gender;
    private String nic;
    private String address;
    private String contact;
    private String email;
    private String department;
    private String password;
    private String profilePic;

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
     * @return the role
     */
    public String getRole() {
        return role;
    }

    /**
     * @param role the role to set
     */
    public void setRole(String role) {
        this.role = role;
    }

    /**
     * @return the fName
     */
    public String getfName() {
        return fName;
    }

    /**
     * @param fName the fName to set
     */
    public void setfName(String fName) {
        this.fName = fName;
    }

    /**
     * @return the lName
     */
    public String getlName() {
        return lName;
    }

    /**
     * @param lName the lName to set
     */
    public void setlName(String lName) {
        this.lName = lName;
    }

    /**
     * @return the dob
     */
    public String getDob() {
        return dob;
    }

    /**
     * @param dob the dob to set
     */
    public void setDob(String dob) {
        this.dob = dob;
    }

    /**
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @return the nic
     */
    public String getNic() {
        return nic;
    }

    /**
     * @param nic the nic to set
     */
    public void setNic(String nic) {
        this.nic = nic;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the contact
     */
    public String getContact() {
        return contact;
    }

    /**
     * @param contact the contact to set
     */
    public void setContact(String contact) {
        this.contact = contact;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the department
     */
    public String getDepartment() {
        return department;
    }

    /**
     * @param department the department to set
     */
    public void setDepartment(String department) {
        this.department = department;
    }
    
    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the profilePic
     */
    public String getProfilePic() {
        return profilePic;
    }

    /**
     * @param profilePic the profilePic to set
     */
    public void setProfilePic(String profilePic) {
        this.profilePic = profilePic;
    }
    
    public boolean createUser()
    {
       boolean status = false;
       String r = getRole();
       System.out.println(getDepartment());
       System.out.println(getRole());
       
       try {
           switch(r){
                case "admin":
                    con=DBConnect.connect();
                    cs = (CallableStatement) con.prepareCall("{call CreateAdmin('"+getId()+"','"+getfName()+"','"+getlName()+"','"+getDob()+"','"+getGender()+"','"+getNic()+"','"+getAddress()+"','"+getContact()+"','"+getEmail()+"','"+getPassword()+"','"+getRole()+"')}");
                    rs = cs.executeQuery();
                    JOptionPane.showMessageDialog(null, "User creation is successfully");
                    status = true;
                    break;
                    
                case "lecturer":
                    con=DBConnect.connect();
                    cs = (CallableStatement) con.prepareCall("{call CreateLecturer('"+getId()+"','"+getfName()+"','"+getlName()+"','"+getDob()+"','"+getGender()+"','"+getNic()+"','"+getAddress()+"','"+getContact()+"','"+getEmail()+"','"+getDepartment()+"','"+getPassword()+"','"+getRole()+"')}");
                    rs = cs.executeQuery();
                    JOptionPane.showMessageDialog(null, "User creation is successfully");
                    status = true;
                    break;
                    
                case "technical officer":
                    con=DBConnect.connect();
                    cs = (CallableStatement) con.prepareCall("{call CreateTechnicalOfficer('"+getId()+"','"+getfName()+"','"+getlName()+"','"+getDob()+"','"+getGender()+"','"+getNic()+"','"+getAddress()+"','"+getContact()+"','"+getEmail()+"','"+getDepartment()+"','"+getPassword()+"','"+getRole()+"')}");
                    rs = cs.executeQuery();
                    JOptionPane.showMessageDialog(null, "User creation is successfully");
                    status = true;
                    break;
                    
                case "student":
                    con=DBConnect.connect();
                    cs = (CallableStatement) con.prepareCall("{call CreateStudent('"+getId()+"','"+getfName()+"','"+getlName()+"','"+getDob()+"','"+getGender()+"','"+getNic()+"','"+getAddress()+"','"+getContact()+"','"+getEmail()+"','"+getDepartment()+"','"+getPassword()+"','"+getRole()+"')}");
                    rs = cs.executeQuery();
                    JOptionPane.showMessageDialog(null, "User creation is successfully");
                    status = true;
                    break;
           }
           
       } catch (SQLException ex) {
           JOptionPane.showMessageDialog(null, ex.getMessage());
       }
       return status;
    }
    
    public boolean editUser()
    {
        boolean status = false;
       
        try {
            con=DBConnect.connect();
            String sql = "CALL UpdateUser('"+getId()+"','"+getfName()+"','"+getlName()+"','"+getDob()+"','"+getGender()+"','"+getNic()+"','"+getAddress()+"','"+getContact()+"','"+getEmail()+"','"+getPassword()+"')";
            ps = (PreparedStatement) con.prepareCall(sql);
            rs = ps.executeQuery();
            JOptionPane.showMessageDialog(null, "User details update is successfully");
            status = true;
           
       } catch (SQLException e) {
           JOptionPane.showMessageDialog(null, e.getMessage());
       }
       return status;
    }
    
}

class Admin extends User
{
       
}

class Student extends User
{
    private String department;

    /**
     * @return the department
     */
    @Override
    public String getDepartment() {
        return department;
    }

    /**
     * @param department the department to set
     */
    @Override
    public void setDepartment(String department) {
        this.department = department;
    }
    
    
}

class TechOfficer extends User
{
    private String department;

    /**
     * @return the department
     */
    @Override
    public String getDepartment() {
        return department;
    }

    /**
     * @param department the department to set
     */
    @Override
    public void setDepartment(String department) {
        this.department = department;
    }
    
    
}

class Lecturer extends User
{
    private String department;

    /**
     * @return the department
     */
    @Override
    public String getDepartment() {
        return department;
    }

    /**
     * @param department the department to set
     */
    @Override
    public void setDepartment(String department) {
        this.department = department;
    }
    
    
}