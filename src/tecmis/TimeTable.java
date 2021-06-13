/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tecmis;

import com.mysql.jdbc.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author sanda
 */
public class TimeTable {
    
    Connection con=null;
    ResultSet rs=null;
    PreparedStatement ps = null;
    CallableStatement cs=null;
    
    private String level = null;
    
    private String a1 = null;
    private String a2 = null;
    private String a3 = null;
    private String a4 = null;
    private String a5 = null;
    private String a6 = null;
    private String a7 = null;
    private String a8 = null;
    
    private String b1 = null;
    private String b2 = null;
    private String b3 = null;
    private String b4 = null;
    private String b5 = null;
    private String b6 = null;
    private String b7 = null;
    private String b8 = null;
    
    private String c1 = null;
    private String c2 = null;
    private String c3 = null;
    private String c4 = null;
    private String c5 = null;
    private String c6 = null;
    private String c7 = null;
    private String c8 = null;
    
    private String d1 = null;
    private String d2 = null;
    private String d3 = null;
    private String d4 = null;
    private String d5 = null;
    private String d6 = null;
    private String d7 = null;
    private String d8 = null;
    
    private String e1 = null;
    private String e2 = null;
    private String e3 = null;
    private String e4 = null;
    private String e5 = null;
    private String e6 = null;
    private String e7 = null;
    private String e8 = null;

    /**
     * @return the a1
     */
    public String getA1() {
        return a1;
    }

    /**
     * @param a1 the a1 to set
     */
    public void setA1(String a1) {
        this.a1 = a1;
    }
    
    /**
     * @return the level
     */
    public String getLevel() {
        return level;
    }

    /**
     * @param level the a1 to set
     */
    public void setLevel(String lev) {
        this.level = lev;
    }

    /**
     * @return the a2
     */
    public String getA2() {
        return a2;
    }

    /**
     * @param a2 the a2 to set
     */
    public void setA2(String a2) {
        this.a2 = a2;
    }

    /**
     * @return the a3
     */
    public String getA3() {
        return a3;
    }

    /**
     * @param a3 the a3 to set
     */
    public void setA3(String a3) {
        this.a3 = a3;
    }

    /**
     * @return the a4
     */
    public String getA4() {
        return a4;
    }

    /**
     * @param a4 the a4 to set
     */
    public void setA4(String a4) {
        this.a4 = a4;
    }

    /**
     * @return the a5
     */
    public String getA5() {
        return a5;
    }

    /**
     * @param a5 the a5 to set
     */
    public void setA5(String a5) {
        this.a5 = a5;
    }

    /**
     * @return the a6
     */
    public String getA6() {
        return a6;
    }

    /**
     * @param a6 the a6 to set
     */
    public void setA6(String a6) {
        this.a6 = a6;
    }

    /**
     * @return the a7
     */
    public String getA7() {
        return a7;
    }

    /**
     * @param a7 the a7 to set
     */
    public void setA7(String a7) {
        this.a7 = a7;
    }

    /**
     * @return the a8
     */
    public String getA8() {
        return a8;
    }

    /**
     * @param a8 the a8 to set
     */
    public void setA8(String a8) {
        this.a8 = a8;
    }

    /**
     * @return the b1
     */
    public String getB1() {
        return b1;
    }

    /**
     * @param b1 the b1 to set
     */
    public void setB1(String b1) {
        this.b1 = b1;
    }

    /**
     * @return the b2
     */
    public String getB2() {
        return b2;
    }

    /**
     * @param b2 the b2 to set
     */
    public void setB2(String b2) {
        this.b2 = b2;
    }

    /**
     * @return the b3
     */
    public String getB3() {
        return b3;
    }

    /**
     * @param b3 the b3 to set
     */
    public void setB3(String b3) {
        this.b3 = b3;
    }

    /**
     * @return the b4
     */
    public String getB4() {
        return b4;
    }

    /**
     * @param b4 the b4 to set
     */
    public void setB4(String b4) {
        this.b4 = b4;
    }

    /**
     * @return the b5
     */
    public String getB5() {
        return b5;
    }

    /**
     * @param b5 the b5 to set
     */
    public void setB5(String b5) {
        this.b5 = b5;
    }

    /**
     * @return the b6
     */
    public String getB6() {
        return b6;
    }

    /**
     * @param b6 the b6 to set
     */
    public void setB6(String b6) {
        this.b6 = b6;
    }

    /**
     * @return the b7
     */
    public String getB7() {
        return b7;
    }

    /**
     * @param b7 the b7 to set
     */
    public void setB7(String b7) {
        this.b7 = b7;
    }

    /**
     * @return the b8
     */
    public String getB8() {
        return b8;
    }

    /**
     * @param b8 the b8 to set
     */
    public void setB8(String b8) {
        this.b8 = b8;
    }

    /**
     * @return the c1
     */
    public String getC1() {
        return c1;
    }

    /**
     * @param c1 the c1 to set
     */
    public void setC1(String c1) {
        this.c1 = c1;
    }

    /**
     * @return the c2
     */
    public String getC2() {
        return c2;
    }

    /**
     * @param c2 the c2 to set
     */
    public void setC2(String c2) {
        this.c2 = c2;
    }

    /**
     * @return the c3
     */
    public String getC3() {
        return c3;
    }

    /**
     * @param c3 the c3 to set
     */
    public void setC3(String c3) {
        this.c3 = c3;
    }

    /**
     * @return the c4
     */
    public String getC4() {
        return c4;
    }

    /**
     * @param c4 the c4 to set
     */
    public void setC4(String c4) {
        this.c4 = c4;
    }

    /**
     * @return the c5
     */
    public String getC5() {
        return c5;
    }

    /**
     * @param c5 the c5 to set
     */
    public void setC5(String c5) {
        this.c5 = c5;
    }

    /**
     * @return the c6
     */
    public String getC6() {
        return c6;
    }

    /**
     * @param c6 the c6 to set
     */
    public void setC6(String c6) {
        this.c6 = c6;
    }

    /**
     * @return the c7
     */
    public String getC7() {
        return c7;
    }

    /**
     * @param c7 the c7 to set
     */
    public void setC7(String c7) {
        this.c7 = c7;
    }

    /**
     * @return the c8
     */
    public String getC8() {
        return c8;
    }

    /**
     * @param c8 the c8 to set
     */
    public void setC8(String c8) {
        this.c8 = c8;
    }

    /**
     * @return the d1
     */
    public String getD1() {
        return d1;
    }

    /**
     * @param d1 the d1 to set
     */
    public void setD1(String d1) {
        this.d1 = d1;
    }

    /**
     * @return the d2
     */
    public String getD2() {
        return d2;
    }

    /**
     * @param d2 the d2 to set
     */
    public void setD2(String d2) {
        this.d2 = d2;
    }

    /**
     * @return the d3
     */
    public String getD3() {
        return d3;
    }

    /**
     * @param d3 the d3 to set
     */
    public void setD3(String d3) {
        this.d3 = d3;
    }

    /**
     * @return the d4
     */
    public String getD4() {
        return d4;
    }

    /**
     * @param d4 the d4 to set
     */
    public void setD4(String d4) {
        this.d4 = d4;
    }

    /**
     * @return the d5
     */
    public String getD5() {
        return d5;
    }

    /**
     * @param d5 the d5 to set
     */
    public void setD5(String d5) {
        this.d5 = d5;
    }

    /**
     * @return the d6
     */
    public String getD6() {
        return d6;
    }

    /**
     * @param d6 the d6 to set
     */
    public void setD6(String d6) {
        this.d6 = d6;
    }

    /**
     * @return the d7
     */
    public String getD7() {
        return d7;
    }

    /**
     * @param d7 the d7 to set
     */
    public void setD7(String d7) {
        this.d7 = d7;
    }

    /**
     * @return the d8
     */
    public String getD8() {
        return d8;
    }

    /**
     * @param d8 the d8 to set
     */
    public void setD8(String d8) {
        this.d8 = d8;
    }

    /**
     * @return the e1
     */
    public String getE1() {
        return e1;
    }

    /**
     * @param e1 the e1 to set
     */
    public void setE1(String e1) {
        this.e1 = e1;
    }

    /**
     * @return the e2
     */
    public String getE2() {
        return e2;
    }

    /**
     * @param e2 the e2 to set
     */
    public void setE2(String e2) {
        this.e2 = e2;
    }

    /**
     * @return the e3
     */
    public String getE3() {
        return e3;
    }

    /**
     * @param e3 the e3 to set
     */
    public void setE3(String e3) {
        this.e3 = e3;
    }

    /**
     * @return the e4
     */
    public String getE4() {
        return e4;
    }

    /**
     * @param e4 the e4 to set
     */
    public void setE4(String e4) {
        this.e4 = e4;
    }

    /**
     * @return the e5
     */
    public String getE5() {
        return e5;
    }

    /**
     * @param e5 the e5 to set
     */
    public void setE5(String e5) {
        this.e5 = e5;
    }

    /**
     * @return the e6
     */
    public String getE6() {
        return e6;
    }

    /**
     * @param e6 the e6 to set
     */
    public void setE6(String e6) {
        this.e6 = e6;
    }

    /**
     * @return the e7
     */
    public String getE7() {
        return e7;
    }

    /**
     * @param e7 the e7 to set
     */
    public void setE7(String e7) {
        this.e7 = e7;
    }

    /**
     * @return the e8
     */
    public String getE8() {
        return e8;
    }

    /**
     * @param e8 the e8 to set
     */
    public void setE8(String e8) {
        this.e8 = e8;
    }
    
    public boolean createTimeTableICT()
    {
       boolean status = false;
       
       try {
            con=DBConnect.connect();
            cs = (CallableStatement) con.prepareCall("{call CreateTimeTableICT('"+getLevel()+"','"+getA1()+"','"+getA2()+"','"+getA3()+"','"+getA4()+"','"+getA5()+"','"+getA6()+"','"+getA7()+"','"+getA8()+"','"+getB1()+"','"+getB2()+"','"+getB3()+"','"+getB4()+"','"+getB5()+"','"+getB6()+"','"+getB7()+"','"+getB8()+"','"+getC1()+"','"+getC2()+"','"+getC3()+"','"+getC4()+"','"+getC5()+"','"+getC6()+"','"+getC7()+"','"+getC8()+"','"+getD1()+"','"+getD2()+"','"+getD3()+"','"+getD4()+"','"+getD5()+"','"+getD6()+"','"+getD7()+"','"+getD8()+"','"+getE1()+"','"+getE2()+"','"+getE3()+"','"+getE4()+"','"+getE5()+"','"+getE6()+"','"+getE7()+"','"+getE8()+"')}");
            rs = cs.executeQuery();
            JOptionPane.showMessageDialog(null, "Time Table updated successfully");
            status = true;
           
       } catch (SQLException ex) {
           JOptionPane.showMessageDialog(null, ex.getMessage());
       }
       return status;
    }
    
    public boolean createTimeTableENT()
    {
       boolean status = false;
       
       try {
            con=DBConnect.connect();
            cs = (CallableStatement) con.prepareCall("{call CreateTimeTableENT('"+getLevel()+"','"+getA1()+"','"+getA2()+"','"+getA3()+"','"+getA4()+"','"+getA5()+"','"+getA6()+"','"+getA7()+"','"+getA8()+"','"+getB1()+"','"+getB2()+"','"+getB3()+"','"+getB4()+"','"+getB5()+"','"+getB6()+"','"+getB7()+"','"+getB8()+"','"+getC1()+"','"+getC2()+"','"+getC3()+"','"+getC4()+"','"+getC5()+"','"+getC6()+"','"+getC7()+"','"+getC8()+"','"+getD1()+"','"+getD2()+"','"+getD3()+"','"+getD4()+"','"+getD5()+"','"+getD6()+"','"+getD7()+"','"+getD8()+"','"+getE1()+"','"+getE2()+"','"+getE3()+"','"+getE4()+"','"+getE5()+"','"+getE6()+"','"+getE7()+"','"+getE8()+"')}");
            rs = cs.executeQuery();
            JOptionPane.showMessageDialog(null, "Time Table updated successfully");
            status = true;
           
       } catch (SQLException ex) {
           JOptionPane.showMessageDialog(null, ex.getMessage());
       }
       return status;
    }
    
    public boolean createTimeTableBST()
    {
       boolean status = false;
       
       try {
            con=DBConnect.connect();
            cs = (CallableStatement) con.prepareCall("{call CreateTimeTableBST('"+getLevel()+"','"+getA1()+"','"+getA2()+"','"+getA3()+"','"+getA4()+"','"+getA5()+"','"+getA6()+"','"+getA7()+"','"+getA8()+"','"+getB1()+"','"+getB2()+"','"+getB3()+"','"+getB4()+"','"+getB5()+"','"+getB6()+"','"+getB7()+"','"+getB8()+"','"+getC1()+"','"+getC2()+"','"+getC3()+"','"+getC4()+"','"+getC5()+"','"+getC6()+"','"+getC7()+"','"+getC8()+"','"+getD1()+"','"+getD2()+"','"+getD3()+"','"+getD4()+"','"+getD5()+"','"+getD6()+"','"+getD7()+"','"+getD8()+"','"+getE1()+"','"+getE2()+"','"+getE3()+"','"+getE4()+"','"+getE5()+"','"+getE6()+"','"+getE7()+"','"+getE8()+"')}");
            rs = cs.executeQuery();
            JOptionPane.showMessageDialog(null, "Time Table updated successfully");
            status = true;
           
       } catch (SQLException ex) {
           JOptionPane.showMessageDialog(null, ex.getMessage());
       }
       return status;
    }
}
