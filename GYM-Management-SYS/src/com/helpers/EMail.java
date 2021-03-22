package com.helpers;

import java.util.Properties;
import java.util.Random;

import javax.mail.*;  
import javax.mail.internet.*;  

 

public class EMail {

	public static void main(String[] args) {
  //String s="ehackers04@gmail.com";
		
		
		Random randomGenerator = new Random();
		int randomInt = randomGenerator.nextInt(1000000);
		
		OTP("Rajesh","ehackers04@gmail.com",randomInt);
		System.out.println(randomInt);
	}
	public static  void OTP(String name,String to, int randomInt){
		
		 String from ="softxdigitalmarket@gmail.com";
		final String password="?????????";
		
		
	
		//String messageString="";
		String subject="OTP";
		//String to ="ehackers04@gmail.com";
		
		
		String host="smtp.gmail.com";
		
		Properties properties = System.getProperties();
		System.out.println(properties);
		
		properties.put("mail.smtp.host", host);
		properties.put("mail.smtp.port", "465");
		properties.put("mail.smtp.ssl.enable", "true");
		properties.put("mail.smtp.auth", "true");
		
	Session session=Session.getInstance(properties, new Authenticator() {
			
			@Override
			protected PasswordAuthentication getPasswordAuthentication() 
			{
			return new PasswordAuthentication(from,password);
			}
		});
		
	MimeMessage m= new MimeMessage(session);
	try {
		
		m.setFrom(new InternetAddress(from));
		m.setSubject("Softx Email Validation ");
		m.addRecipient(Message.RecipientType.TO,new InternetAddress(to));
		m.setContent("<h1> Hello "+name+"</h1><br>"
				+ "<h2>Your OTP is : "+randomInt+" </h2><br><br> "
						+ "<h3><center>Thanks for Join us :) </<center></h3>","text/html");
		
		Transport.send(m);
		
		System.out.println("Sended ");
	} catch (Exception e) {
		e.printStackTrace();
	}
	
	
		
		
		

		
		
		
		
	}
	
}
