package tw.com.uyayi.dao.impl;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;

public class MailCheck {
	
		  String host ="smtp.gmail.com" ;
		  String port = "587";
		  final String username = "EEIT121.team6";
		  final String password = "UYAYI123";//your password
		  String to;
		  String sub;
		  String text;
	
	public MailCheck() {
			
		}

	public void sendMail(String to, String sub, String text) {
		  Properties props = System.getProperties();
		  props.setProperty("mail.transport.protocol", "smtp");
		  props.setProperty("mail.smtp.host", host);
		  props.setProperty("mail.smtp.port", port);
		  props.put("mail.smtp.auth", "true");
		  props.put("mail.smtp.ssl.enable", "true");
		  props.put("mail.smtp.starttls.enable", "true");
		  Session session = Session.getInstance(props, new GMailAuthenticator(username, password));

		  try {

		   Message message = new MimeMessage(session);
		   message.setFrom(new InternetAddress("EEIT121.team6@gmail.com"));
		   message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
		   message.setSubject(sub);
		   MimeBodyPart textPart = new MimeBodyPart();
		   StringBuffer html = new StringBuffer();
		   html.append(text);
		   Multipart email = new MimeMultipart();
		   email.addBodyPart(textPart);
		   
		   textPart.setContent(html.toString(), "text/html; charset=UTF-8"); 
		   message.setContent(email,"text/html");
		  

		   Transport transport = session.getTransport("smtp");
		   transport.connect(host, username, password);

		   Transport.send(message);

		   System.out.println("寄送email結束.");
		   transport.close();
		  } catch (MessagingException e) {
			  e.printStackTrace();
		  }
		 }

	public String getHost() {
		return host;
	}

	public void setHost(String host) {
		this.host = host;
	}

	public String getPort() {
		return port;
	}

	public void setPort(String port) {
		this.port = port;
	}

	public String getTo() {
		return to;
	}

	public void setTo(String to) {
		this.to = to;
	}

	public String getSub() {
		return sub;
	}

	public void setSub(String sub) {
		this.sub = sub;
	}

	public String getText() {
		return text;
	}

	public void setText(String text) {
		this.text = text;
	}

	public String getUsername() {
		return username;
	}

	public String getPassword() {
		return password;
	}
		
	}
