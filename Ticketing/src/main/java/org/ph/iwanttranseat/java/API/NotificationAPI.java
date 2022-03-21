package org.ph.iwanttranseat.java.API;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class NotificationAPI {
	
	public String message;
	public String subject;
	public String to;
	
	public NotificationAPI() {
		
	}

	public NotificationAPI(String message, String subject, String to) {
		super();
		this.message = message;
		this.subject = subject;
		this.to = to;
	}



	public boolean sendEmail(String message, String subject, String to) {
		
		boolean status = false;
		
		String host="smtp.gmail.com";
		Properties properties = System.getProperties();
		System.out.println("PROPERTIES "+properties);
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port","465");
		properties.put("mail.smtp.ssl.enable","true");
		properties.put("mail.smtp.auth","true");
		Session session=Session.getInstance(properties, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {				
				return new PasswordAuthentication("iWantTranseat@gmail.com", "09050758558");
			}
			
			
			
		});
		
		session.setDebug(true);
		MimeMessage m = new MimeMessage(session);
		
		try {
		m.setFrom("iWantTranseat@gmail.com");
		m.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		m.setSubject(subject);
		m.setText(message);
		Transport.send(m);
		status = true;
		System.out.println("Sent success...................");
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		return status;

	}
}
