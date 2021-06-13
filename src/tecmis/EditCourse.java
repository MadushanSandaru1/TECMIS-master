/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tecmis;

import com.mysql.jdbc.Connection;
import java.sql.CallableStatement;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;

import static tecmis.AdminDashboard.editCourseId;

/**
 *
 * @author sanda
 */
public final class EditCourse extends javax.swing.JFrame {
    
    java.sql.Connection con = null;
    ResultSet rs=null;
    PreparedStatement ps = null;
    CallableStatement cs=null;
    
    String editId = null;
    
    /**
     * Creates new form EditCourse
     */    
    
    public EditCourse() {
        initComponents();
        
        this.setIconImage(new ImageIcon(getClass().getResource("/image/tecmis.png")).getImage());
        
        comboBoxLecturer();
        editId = AdminDashboard.editCourseId;
        getEditData();
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        updateCourse = new javax.swing.JPanel();
        jLabel13 = new javax.swing.JLabel();
        jLabel14 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();
        courseId = new javax.swing.JTextField();
        courseTitle = new javax.swing.JTextField();
        courseCredit = new javax.swing.JTextField();
        courseDepartment = new javax.swing.JComboBox<>();
        courseCoordinator = new javax.swing.JComboBox<>();
        btnUpdateCourse = new javax.swing.JButton();
        btnCancelCourse = new javax.swing.JButton();
        updateCourseMessage = new javax.swing.JLabel();
        jPanel7 = new javax.swing.JPanel();
        jLabel51 = new javax.swing.JLabel();
        jLabel54 = new javax.swing.JLabel();
        jLabel56 = new javax.swing.JLabel();
        jLabel57 = new javax.swing.JLabel();
        midMark = new javax.swing.JTextField();
        assess = new javax.swing.JCheckBox();
        mid = new javax.swing.JCheckBox();
        quiz = new javax.swing.JCheckBox();
        jLabel59 = new javax.swing.JLabel();
        practical = new javax.swing.JCheckBox();
        theoryMark = new javax.swing.JTextField();
        jLabel60 = new javax.swing.JLabel();
        updateCourseMarkMessage = new javax.swing.JLabel();
        jLabel63 = new javax.swing.JLabel();
        quizMark = new javax.swing.JTextField();
        jLabel64 = new javax.swing.JLabel();
        assessMark = new javax.swing.JTextField();
        jLabel65 = new javax.swing.JLabel();
        theory = new javax.swing.JCheckBox();
        jLabel66 = new javax.swing.JLabel();
        practicalMark = new javax.swing.JTextField();
        courseLevel = new javax.swing.JComboBox<>();
        jLabel18 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Edit Course");

        updateCourse.setBackground(new java.awt.Color(255, 255, 255));

        jLabel13.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel13.setForeground(new java.awt.Color(13, 20, 40));
        jLabel13.setText("Cource Id :");

        jLabel14.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel14.setForeground(new java.awt.Color(13, 20, 40));
        jLabel14.setText("Cource Title :");

        jLabel15.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel15.setForeground(new java.awt.Color(13, 20, 40));
        jLabel15.setText("Cource Coordinator :");

        jLabel16.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel16.setForeground(new java.awt.Color(13, 20, 40));
        jLabel16.setText("Department :");

        jLabel17.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel17.setForeground(new java.awt.Color(13, 20, 40));
        jLabel17.setText("Credit :");

        courseId.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        courseId.setText("ICT");
        courseId.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 137, 95)));
        courseId.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                courseIdActionPerformed(evt);
            }
        });

        courseTitle.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        courseTitle.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 137, 95)));

        courseCredit.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        courseCredit.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 137, 95)));

        courseDepartment.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        courseDepartment.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "ICT", "ENT", "BST" }));
        courseDepartment.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 137, 95)));
        courseDepartment.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        courseDepartment.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                courseDepartmentActionPerformed(evt);
            }
        });

        courseCoordinator.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        courseCoordinator.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 137, 95)));
        courseCoordinator.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        courseCoordinator.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                courseCoordinatorActionPerformed(evt);
            }
        });

        btnUpdateCourse.setBackground(new java.awt.Color(0, 137, 95));
        btnUpdateCourse.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btnUpdateCourse.setForeground(new java.awt.Color(255, 255, 255));
        btnUpdateCourse.setText("Update");
        btnUpdateCourse.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnUpdateCourseActionPerformed(evt);
            }
        });

        btnCancelCourse.setBackground(new java.awt.Color(0, 137, 95));
        btnCancelCourse.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        btnCancelCourse.setForeground(new java.awt.Color(255, 255, 255));
        btnCancelCourse.setText("Cancel");
        btnCancelCourse.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCancelCourseActionPerformed(evt);
            }
        });

        updateCourseMessage.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        updateCourseMessage.setForeground(new java.awt.Color(0, 137, 95));
        updateCourseMessage.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);

        jPanel7.setBorder(javax.swing.BorderFactory.createTitledBorder(null, "Exams", javax.swing.border.TitledBorder.DEFAULT_JUSTIFICATION, javax.swing.border.TitledBorder.DEFAULT_POSITION, new java.awt.Font("Tahoma", 1, 12), new java.awt.Color(13, 20, 40))); // NOI18N
        jPanel7.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel51.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel51.setForeground(new java.awt.Color(13, 20, 40));
        jLabel51.setText("Assessment :");
        jPanel7.add(jLabel51, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 60, 90, 20));

        jLabel54.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel54.setForeground(new java.awt.Color(13, 20, 40));
        jLabel54.setText("Quiz :");
        jPanel7.add(jLabel54, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 20, 40, 20));

        jLabel56.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel56.setForeground(new java.awt.Color(13, 20, 40));
        jLabel56.setText("marks");
        jPanel7.add(jLabel56, new org.netbeans.lib.awtextra.AbsoluteConstraints(170, 100, -1, 20));

        jLabel57.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel57.setForeground(new java.awt.Color(13, 20, 40));
        jLabel57.setText("Mid :");
        jPanel7.add(jLabel57, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 100, 50, 20));

        midMark.setEnabled(false);
        jPanel7.add(midMark, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 100, 30, 20));

        assess.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                assessActionPerformed(evt);
            }
        });
        jPanel7.add(assess, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 60, -1, -1));

        mid.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                midActionPerformed(evt);
            }
        });
        jPanel7.add(mid, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 100, -1, -1));

        quiz.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                quizActionPerformed(evt);
            }
        });
        jPanel7.add(quiz, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 20, -1, -1));

        jLabel59.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel59.setForeground(new java.awt.Color(13, 20, 40));
        jLabel59.setText("Final Practical :");
        jPanel7.add(jLabel59, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 180, 90, 20));

        practical.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                practicalActionPerformed(evt);
            }
        });
        jPanel7.add(practical, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 180, -1, -1));

        theoryMark.setEnabled(false);
        jPanel7.add(theoryMark, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 140, 30, 20));

        jLabel60.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel60.setForeground(new java.awt.Color(13, 20, 40));
        jLabel60.setText("marks");
        jPanel7.add(jLabel60, new org.netbeans.lib.awtextra.AbsoluteConstraints(170, 140, -1, 20));

        updateCourseMarkMessage.setForeground(new java.awt.Color(255, 0, 0));
        updateCourseMarkMessage.setHorizontalAlignment(javax.swing.SwingConstants.RIGHT);
        jPanel7.add(updateCourseMarkMessage, new org.netbeans.lib.awtextra.AbsoluteConstraints(102, 204, 150, 20));

        jLabel63.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel63.setForeground(new java.awt.Color(13, 20, 40));
        jLabel63.setText("marks");
        jPanel7.add(jLabel63, new org.netbeans.lib.awtextra.AbsoluteConstraints(170, 20, -1, 20));

        quizMark.setEnabled(false);
        jPanel7.add(quizMark, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 20, 30, 20));

        jLabel64.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel64.setForeground(new java.awt.Color(13, 20, 40));
        jLabel64.setText("marks");
        jPanel7.add(jLabel64, new org.netbeans.lib.awtextra.AbsoluteConstraints(170, 60, -1, 20));

        assessMark.setEnabled(false);
        jPanel7.add(assessMark, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 60, 30, 20));

        jLabel65.setFont(new java.awt.Font("Tahoma", 1, 12)); // NOI18N
        jLabel65.setForeground(new java.awt.Color(13, 20, 40));
        jLabel65.setText("Final Theory :");
        jPanel7.add(jLabel65, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 140, 90, 20));

        theory.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                theoryActionPerformed(evt);
            }
        });
        jPanel7.add(theory, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 140, -1, -1));

        jLabel66.setFont(new java.awt.Font("Tahoma", 0, 12)); // NOI18N
        jLabel66.setForeground(new java.awt.Color(13, 20, 40));
        jLabel66.setText("marks");
        jPanel7.add(jLabel66, new org.netbeans.lib.awtextra.AbsoluteConstraints(170, 180, -1, 20));

        practicalMark.setEnabled(false);
        jPanel7.add(practicalMark, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 180, 30, 20));

        courseLevel.setFont(new java.awt.Font("Tahoma", 0, 14)); // NOI18N
        courseLevel.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "I", "II", "III", "IV" }));
        courseLevel.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 137, 95)));
        courseLevel.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        courseLevel.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                courseLevelActionPerformed(evt);
            }
        });

        jLabel18.setFont(new java.awt.Font("Tahoma", 1, 14)); // NOI18N
        jLabel18.setForeground(new java.awt.Color(13, 20, 40));
        jLabel18.setText("Level :");

        javax.swing.GroupLayout updateCourseLayout = new javax.swing.GroupLayout(updateCourse);
        updateCourse.setLayout(updateCourseLayout);
        updateCourseLayout.setHorizontalGroup(
            updateCourseLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(updateCourseLayout.createSequentialGroup()
                .addGap(251, 251, 251)
                .addComponent(jPanel7, javax.swing.GroupLayout.PREFERRED_SIZE, 283, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(updateCourseLayout.createSequentialGroup()
                .addGroup(updateCourseLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(updateCourseLayout.createSequentialGroup()
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jLabel18)
                        .addGap(171, 171, 171)
                        .addComponent(courseLevel, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(updateCourseLayout.createSequentialGroup()
                        .addGap(155, 155, 155)
                        .addGroup(updateCourseLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, updateCourseLayout.createSequentialGroup()
                                .addGroup(updateCourseLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel15)
                                    .addComponent(jLabel17))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(updateCourseLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(courseCredit, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(courseCoordinator, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, updateCourseLayout.createSequentialGroup()
                                .addGroup(updateCourseLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(jLabel13)
                                    .addComponent(jLabel14)
                                    .addComponent(jLabel16))
                                .addGap(171, 171, 171)
                                .addGroup(updateCourseLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(courseDepartment, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(courseTitle, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(courseId, javax.swing.GroupLayout.PREFERRED_SIZE, 200, javax.swing.GroupLayout.PREFERRED_SIZE)))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, updateCourseLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                .addComponent(updateCourseMessage, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, updateCourseLayout.createSequentialGroup()
                                    .addComponent(btnUpdateCourse, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addGap(80, 80, 80)
                                    .addComponent(btnCancelCourse, javax.swing.GroupLayout.PREFERRED_SIZE, 100, javax.swing.GroupLayout.PREFERRED_SIZE))))))
                .addContainerGap(177, Short.MAX_VALUE))
        );
        updateCourseLayout.setVerticalGroup(
            updateCourseLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(updateCourseLayout.createSequentialGroup()
                .addGap(40, 40, 40)
                .addGroup(updateCourseLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel16)
                    .addComponent(courseDepartment, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 14, Short.MAX_VALUE)
                .addGroup(updateCourseLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel18)
                    .addComponent(courseLevel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(updateCourseLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(courseId, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel13))
                .addGap(30, 30, 30)
                .addGroup(updateCourseLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel14)
                    .addComponent(courseTitle, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(updateCourseLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel15)
                    .addComponent(courseCoordinator, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(updateCourseLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel17)
                    .addComponent(courseCredit, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(jPanel7, javax.swing.GroupLayout.PREFERRED_SIZE, 230, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(updateCourseLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnUpdateCourse)
                    .addComponent(btnCancelCourse))
                .addGap(18, 18, 18)
                .addComponent(updateCourseMessage, javax.swing.GroupLayout.PREFERRED_SIZE, 27, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(20, 20, 20))
        );

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 795, Short.MAX_VALUE)
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addGap(0, 0, Short.MAX_VALUE)
                    .addComponent(updateCourse, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGap(0, 0, Short.MAX_VALUE)))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 606, Short.MAX_VALUE)
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addGap(0, 0, Short.MAX_VALUE)
                    .addComponent(updateCourse, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGap(0, 0, Short.MAX_VALUE)))
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void courseIdActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_courseIdActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_courseIdActionPerformed

    private void courseDepartmentActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_courseDepartmentActionPerformed
        Object o = courseDepartment.getSelectedItem();

        String ty = o.toString();

        switch (ty) {
            case "ICT":
            courseId.setText("ICT");
            break;
            case "ENT":
            courseId.setText("ENT");
            break;
            case "BST":
            courseId.setText("BST");
            break;
            default:
            break;
        }
    }//GEN-LAST:event_courseDepartmentActionPerformed

    private void courseCoordinatorActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_courseCoordinatorActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_courseCoordinatorActionPerformed

    private void btnCancelCourseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelCourseActionPerformed
        editCourseId = null;
        this.setVisible(false);
    }//GEN-LAST:event_btnCancelCourseActionPerformed

    private void quizActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_quizActionPerformed
        if(quiz.isSelected()){
            quizMark.setEnabled(true);
        } else {
            quizMark.setText(null);
            quizMark.setEnabled(false);
        }
    }//GEN-LAST:event_quizActionPerformed

    private void assessActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_assessActionPerformed
        if(assess.isSelected()){
            assessMark.setEnabled(true);
        } else {
            assessMark.setText(null);
            assessMark.setEnabled(false);
        }
    }//GEN-LAST:event_assessActionPerformed

    private void midActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_midActionPerformed
        if(mid.isSelected()){
            midMark.setEnabled(true);
        } else {
            midMark.setText(null);
            midMark.setEnabled(false);
        }
    }//GEN-LAST:event_midActionPerformed

    private void theoryActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_theoryActionPerformed
        if(theory.isSelected()){
            theoryMark.setEnabled(true);
        } else {
            theoryMark.setText(null);
            theoryMark.setEnabled(false);
        }
    }//GEN-LAST:event_theoryActionPerformed

    private void practicalActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_practicalActionPerformed
        if(practical.isSelected()){
            practicalMark.setEnabled(true);
        } else {
            practicalMark.setText(null);
            practicalMark.setEnabled(false);
        }
    }//GEN-LAST:event_practicalActionPerformed

    private void btnUpdateCourseActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnUpdateCourseActionPerformed
        boolean flag;
        
        Course c = new Course();
        
        Object dept = courseDepartment.getSelectedItem();
        Object lev = courseLevel.getSelectedItem();
        Object lec = courseCoordinator.getSelectedItem();
        
        String deptId = dept.toString().trim();
        String level = lev.toString().trim();
        String id = courseId.getText().trim();
        String title = courseTitle.getText().trim();
        String lecId = lec.toString().trim();
        String credit = courseCredit.getText().trim();
        int q;
        int a;
        int m;
        int t;
        int p;
        int marks;
        if(this.quiz.isSelected()){
            q = Integer.parseInt(quizMark.getText());
        } else {
            q = 0;
        }
        if(this.assess.isSelected()){
            a = Integer.parseInt(assessMark.getText());
        } else {
            a = 0;
        }
        if(this.mid.isSelected()){
            m = Integer.parseInt(midMark.getText());
        } else {
            m = 0;
        }
        if(this.theory.isSelected()){
            t = Integer.parseInt(theoryMark.getText());
        } else {
            t = 0;
        }
        if(this.practical.isSelected()){
            p = Integer.parseInt(practicalMark.getText());
        } else {
            p = 0;
        }
        
        marks = q+a+m+t+p;
        
        if(marks != 100){
            updateCourseMarkMessage.setText("marks invalid");
        }
        
        if(id.isEmpty() || title.isEmpty())
                updateCourseMessage.setText("Please fill all the fields correctly");
        else if(marks != 100)
                updateCourseMessage.setText("Please insert correct marks");
        else{
            c.setId(id);
            c.setTitle(title);
            c.setLecId(lecId);
            c.setCredit(credit);
            c.setDeptId(deptId);
            c.setLevel(level);
            c.setQuiz(q);
            c.setAssess(a);
            c.setMid(m);
            c.setTheory(t);
            c.setPractical(p);
            
            flag = c.editCourse();
            
            if(flag){
                this.setVisible(false);
                editCourseId = null;
            }
        }
    }//GEN-LAST:event_btnUpdateCourseActionPerformed

    private void courseLevelActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_courseLevelActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_courseLevelActionPerformed

    public void getEditData() {
        con = DBConnect.connect();
        
        try {
            cs = con.prepareCall("{call `SearchCourseDetails`('"+editId+"')}");
            rs = cs.executeQuery();
            
            if(rs.next()){
                courseDepartment.setSelectedItem(rs.getString("Department"));
                courseLevel.setSelectedItem(rs.getString("Level"));
                courseId.setText(rs.getString("ID"));
                courseTitle.setText(rs.getString("Title"));
                courseCoordinator.setSelectedItem(rs.getString("Coordinator"));
                courseCredit.setText(rs.getString("Credit"));
                if(!rs.getString("quiz_mark").equals("0")){
                    quiz.setSelected(true);
                    quizMark.setEnabled(true);
                    quizMark.setText(rs.getString("quiz_mark"));
                }
                if(!rs.getString("assess_mark").equals("0")){
                    assess.setSelected(true);
                    assessMark.setEnabled(true);
                    assessMark.setText(rs.getString("assess_mark"));
                }
                if(!rs.getString("mid_mark").equals("0")){
                    mid.setSelected(true);
                    midMark.setEnabled(true);
                    midMark.setText(rs.getString("mid_mark"));
                }
                if(!rs.getString("theory_mark").equals("0")){
                    theory.setSelected(true);
                    theoryMark.setEnabled(true);
                    theoryMark.setText(rs.getString("theory_mark"));
                }
                if(!rs.getString("practical_mark").equals("0")){
                    practical.setSelected(true);
                    practicalMark.setEnabled(true);
                    practicalMark.setText(rs.getString("practical_mark"));
                }
           }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null,e.getMessage());
        }
        
    }
    
    public void comboBoxLecturer(){
        con = DBConnect.connect();
        String sql = "SELECT `id` FROM `lecturer` WHERE `is_deleted` = 0";
        try {
            ps = con.prepareCall(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                courseCoordinator.addItem(rs.getString("id"));
            }
        } catch (SQLException e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
    }
    
    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(EditCourse.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(() -> {
            new EditCourse().setVisible(true);
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JCheckBox assess;
    private javax.swing.JTextField assessMark;
    private javax.swing.JButton btnCancelCourse;
    private javax.swing.JButton btnUpdateCourse;
    private javax.swing.JComboBox<String> courseCoordinator;
    private javax.swing.JTextField courseCredit;
    private javax.swing.JComboBox<String> courseDepartment;
    private javax.swing.JTextField courseId;
    private javax.swing.JComboBox<String> courseLevel;
    private javax.swing.JTextField courseTitle;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel51;
    private javax.swing.JLabel jLabel54;
    private javax.swing.JLabel jLabel56;
    private javax.swing.JLabel jLabel57;
    private javax.swing.JLabel jLabel59;
    private javax.swing.JLabel jLabel60;
    private javax.swing.JLabel jLabel63;
    private javax.swing.JLabel jLabel64;
    private javax.swing.JLabel jLabel65;
    private javax.swing.JLabel jLabel66;
    private javax.swing.JPanel jPanel7;
    private javax.swing.JCheckBox mid;
    private javax.swing.JTextField midMark;
    private javax.swing.JCheckBox practical;
    private javax.swing.JTextField practicalMark;
    private javax.swing.JCheckBox quiz;
    private javax.swing.JTextField quizMark;
    private javax.swing.JCheckBox theory;
    private javax.swing.JTextField theoryMark;
    private javax.swing.JPanel updateCourse;
    private javax.swing.JLabel updateCourseMarkMessage;
    private javax.swing.JLabel updateCourseMessage;
    // End of variables declaration//GEN-END:variables
}
