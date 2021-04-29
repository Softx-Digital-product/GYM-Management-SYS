package UserData;

import java.io.IOException;
import java.util.SplittableRandom;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class GenrateOTP {
	public static void main(String[] args) {
		System.out.println(GenrateOTP.genrateotp(5));
	}
	public static String genrateotp(int otplength) {
		SplittableRandom srRandom = new SplittableRandom();
		StringBuilder sbBuilder = new StringBuilder();
		for (int i = 0; i < otplength; i++) {
		sbBuilder.append(srRandom.nextInt(0,10));
		String otp = sbBuilder.toString();
			
		}
		
		return sbBuilder.toString();
		
	}
	public void doPost(HttpServletRequest request ,HttpServletResponse res) throws IOException, ServletException {
	GenrateOTP otp = new GenrateOTP();
	otp.genrateotp(5);
	String otpString = otp.genrateotp(5);
	res.sendRedirect("register");
     
	
	
	
	
	
	}

}
