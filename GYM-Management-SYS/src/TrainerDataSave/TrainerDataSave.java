package TrainerDataSave;

import java.io.*;

import javax.servlet.ServletException;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.jasper.tagplugins.jstl.core.Out;

/**
 * Servlet implementation class TrainerDataSave
 */
@WebServlet("/TrainerDataSave")
public class TrainerDataSave extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TrainerDataSave() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
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
		TrainerInfo trainerInfo = new TrainerInfo(get_FNameString, get_LNameString, get_EmailIDString, get_Passwordtring, get_SalaryString);
		TrainerDataDao tdao = new TrainerDataDao();
		String result=tdao.Insert(trainerInfo);
		response.getWriter().println(result);
	
		PrintWriter out = response.getWriter();
		out.println("Name ="+get_FNameString);
		out.println("Last Name="+get_LNameString);
		out.println("Email ="+get_EmailIDString);
		out.println("Password ="+get_Passwordtring);
		out.println("Salary ="+get_SalaryString);
		
	}

}
