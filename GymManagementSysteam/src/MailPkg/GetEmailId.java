package MailPkg;

import TrainerData.TrainerDataGetAndSet;

public class GetEmailId {
	
	public static void main(String[] args) throws Exception {
		TrainerDataGetAndSet getemailAndSet = new TrainerDataGetAndSet();
		String emailIdString = getemailAndSet.getEmailid();		
		PrepareMail.sendMail(emailIdString);
	}
	
	

}
