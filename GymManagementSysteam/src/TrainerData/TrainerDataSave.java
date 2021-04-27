package TrainerData;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import MailPkg.GetEmailId;
import MailPkg.PrepareMail;
import UserData.GenrateOTP;

/**
 * Servlet implementation class TrainerDataSave
 */
@WebServlet("/TrainerDataSave")
public class TrainerDataSave extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
  

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String get_FNameString=request.getParameter("FName");
		String get_LNameString=request.getParameter("LName");
		String get_EmailIDString=request.getParameter("EmailID");
		String get_Passwordtring=request.getParameter("Pass");
		String get_SalaryString=request.getParameter("Sal");
		GenrateOTP genrateOTP = new GenrateOTP();
		String otpString = genrateOTP.genrateotp(6);
	TrainerDataGetAndSet trainerInfo = new TrainerDataGetAndSet(get_FNameString, get_LNameString, get_EmailIDString, get_Passwordtring, get_SalaryString,otpString);
//		GetEmailId emailId = new GetEmailId();
//		
//		try {
//			PrepareMail.sendMail(get_EmailIDString,otpString);
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		
//		TrainerDataBaseSave tdao = new TrainerDataBaseSave();
//		String result=tdao.Insert(trainerInfo);
//		response.getWriter().println(result);
		
	
		PrintWriter out = response.getWriter();
		
		
		
		out.println("Name ="+trainerInfo.getFname());
		out.println("OTP = "+trainerInfo.getOtp());
		out.println("Last Name="+get_LNameString);
		out.println("Email ="+get_EmailIDString);
		out.println("Password ="+get_Passwordtring);
		out.println("Salary ="+get_SalaryString);
	}

}
