package UserData;

import java.io.IOException;
import java.io.PrintWriter;

import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class ConfirmOTPServlet
 */
@WebServlet("/ConfirmOTPServlet")
public class ConfirmOTPServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ConfirmOTPServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

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
		
		String otpString = request.getParameter("otpconfirm");
		
		HttpSession session = request.getSession();
		String otpString2 = session.getAttribute("otp").toString();
		PrintWriter printWriter = response.getWriter();
		if (Integer.parseInt(otpString)==Integer.parseInt(otpString2)) {
			printWriter.println("otp is right "+otpString);
			
			String fnameString = session.getAttribute("fname").toString();
			String lnameString = session.getAttribute("lname").toString();
			String emailString = session.getAttribute("EmailID").toString();
			String passwardString = session.getAttribute("Pass").toString();
			String cityString = session.getAttribute("City").toString();
			String genderString = session.getAttribute("gender").toString();
			UserGetAndSetData userGetAndSetData = new UserGetAndSetData(fnameString,lnameString,emailString,passwardString,cityString,genderString);
			UserDataSave userDataSave = new UserDataSave();
			String resultString = userDataSave.Insert(userGetAndSetData);
			System.out.println(resultString);
			response.sendRedirect("Login.jsp");
			
			
		}
		else {
			printWriter.println("Wrong"+otpString);
			printWriter.println("Right"+otpString2);
			
			
		}
	}

}
