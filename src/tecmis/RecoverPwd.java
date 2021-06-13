/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tecmis;

import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

import java.util.Random;
import javax.mail.MessagingException;
import javax.swing.JOptionPane;

/**
 *
 * @author sanda
 */
public class RecoverPwd {

    public static void sendMail(String recepient, String pwd) throws Exception {
        Random rand = new Random();
        
        System.out.println("Preparing to send email...");
        
        Properties properties = new Properties();
        
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");
        properties.put("mail.smtp.host", "smtp.gmail.com");
        properties.put("mail.smtp.port", "587");
        
        String myAccountEmail = "tec.ruh@gmail.com";
        String password = "Technology@1";
        
        //int randNum = rand.nextInt(1000);
        String randNum = pwd;
        
        Session session = Session.getInstance(properties, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(myAccountEmail, password); //To change body of generated methods, choose Tools | Templates.
            }
        });
        
        Message message = prepareMessage(session, myAccountEmail, recepient, randNum);
        
        Transport.send(message);
        System.out.println("Message sent successfully...");
    }

    private static Message prepareMessage(Session session, String myAccountEmail, String recepient, String randNum) {
        try {
            Message message = new MimeMessage(session);
            message.setFrom(new InternetAddress(myAccountEmail));
            message.setRecipient(Message.RecipientType.TO, new InternetAddress(recepient));
            message.setSubject("Recovery TECMIS Account");
            //message.setText("hey there");
            String htmlCode = "<h3>TECMIS Password</h3><br><br><p>Your TECMIS password is <b>"+randNum+"</b></p><br><br><br><pre>Admin,<br>Faculty of Technology,<br>University of Ruhuna,<br>Matara, Sri Lanka.</pre>";
            message.setContent(htmlCode, "text/html");
            return message;
                    
        } catch (MessagingException e) {
            JOptionPane.showMessageDialog(null, e.getMessage());
        }
        return null;
    }
    
}
