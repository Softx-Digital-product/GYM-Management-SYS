package MailPkg;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class PrepareMail {
	public static void sendMail(String resevr,String otp) throws Exception {
		System.out.println("prepairing");
		Properties properties = new Properties();
		properties.put("mail.smtp.auth", "true");
		properties.put("mail.smtp.starttls.enable", "true");
		properties.put("mail.smtp.host", "smtp.gmail.com");
		properties.put("mail.smtp.port", "587");
		String accountfromString ="opswap47@gmail.com";
		String passwordString ="swapnilvirkar9323";
		Session session = Session.getInstance(properties, new Authenticator() {
			@Override
			protected javax.mail.PasswordAuthentication getPasswordAuthentication() {
				return new javax.mail.PasswordAuthentication(accountfromString, passwordString);
				
				
			}
			
		});
		Message message = prepareMessage(session,accountfromString,resevr,otp);
			javax.mail.Transport.send(message);
			System.out.println("email send");
		}
	
	

	private static Message prepareMessage(Session session, String accountfromString,String sendtoemail,String otp) {
		// TODO Auto-generated method stub
		
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(accountfromString));
			message.setRecipient(Message.RecipientType.TO, new InternetAddress(sendtoemail));
			message.setSubject(" Gym Email Verification ");
			message.setText("Here is your OTP -\n "+otp);
			return message;
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}


}
