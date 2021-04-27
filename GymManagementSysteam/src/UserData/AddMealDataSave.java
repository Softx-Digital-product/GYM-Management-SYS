package UserData;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class AddMealDataSave
 */
@WebServlet("/AddMealDataSave")
public class AddMealDataSave extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddMealDataSave() {
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
		String dayString = request.getParameter("Day");
		String mealOneString = request.getParameter("MealOne");
		String mealtwoString = request.getParameter("MealTwo");
		String mealthreeString = request.getParameter("MealThree");
		String mealforuString = request.getParameter("MealFour");
		String mealStringfiveString = request.getParameter("MealFive");
		String mealsixString = request.getParameter("MealSix");
		
		
		
		
		
		
		
		
	}

}
