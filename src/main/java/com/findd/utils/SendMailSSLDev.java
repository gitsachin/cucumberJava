package com.findd.utils;

import java.util.Properties;

import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

import org.apache.commons.codec.binary.Base64;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.htmlunit.HtmlUnitDriver;

import com.findd.drivers.ReadPropFile;

public class SendMailSSLDev {
	
	Base64 base64 = new Base64();
	
	String password = new String(base64.decode(ReadPropFile.getValue("sender_password").getBytes()));
	
	public String subject="Findd - Dev Env Build - Automation Test Report";
	public void sendMail() {
		
		
		
		Properties props = new Properties();
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.socketFactory.port", "465");
		props.put("mail.smtp.socketFactory.class",
				"javax.net.ssl.SSLSocketFactory");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.port", "465");

		Session session = Session.getDefaultInstance(props,
			new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(ReadPropFile.getValue("sender_email"), password);
				}
			});

		try {

			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(ReadPropFile.getValue("sender_email")));
			message.setRecipients(Message.RecipientType.TO,
					InternetAddress.parse(ReadPropFile.getValue("first_recipient")));
			message.addRecipients(Message.RecipientType.TO,
					InternetAddress.parse(ReadPropFile.getValue("second_recipient")));
			message.addRecipients(Message.RecipientType.CC,
					InternetAddress.parse(ReadPropFile.getValue("third_recipient")));
			message.addRecipients(Message.RecipientType.CC,
					InternetAddress.parse(ReadPropFile.getValue("forth_recipient")));
			message.setSubject(subject);
			
			BodyPart messageBodyPart = new MimeBodyPart();

	         // Now set the actual message
	         messageBodyPart.setText("This is a HTML report file");

	         // Create a multipar message
	         Multipart multipart = new MimeMultipart();

	         // Set text message part
	         multipart.addBodyPart(messageBodyPart);

	         // Part two is attachment
	         messageBodyPart = new MimeBodyPart();
	         String filename = System.getProperty("user.dir") +"//target//cucumber-results-feature-overview.html";
	         DataSource source = new FileDataSource(filename);
	         messageBodyPart.setDataHandler(new DataHandler(source));
	         messageBodyPart.setFileName(filename);
	         multipart.addBodyPart(messageBodyPart);

	     	message.setContent(multipart);
	         
	         // Send the complete message parts
	         
	         WebDriver driver=new HtmlUnitDriver();
	         driver.get("file:///" +filename);
	 		String content=driver.getPageSource();
			//System.out.println(content);
			String[] parts = content.split("<h1>\r\n" + 
					"      Overview Chart\r\n" + 
					"    </h1>");
			
			String[] parts1 = parts[1].split("</table>\r\n" + 
					"    <h1>\r\n" + 
					"      Features Status");
			
			
			String message2=parts[0]+
					"    <h1>\r\n" + 
					"      Features Status" +parts1[1];
		  		
		  		message.setContent(message2, "text/html");
		  	
		  		driver.close();
			Transport.send(message);

		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}
	}
}
