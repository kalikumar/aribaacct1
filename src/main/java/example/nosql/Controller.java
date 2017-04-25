package example.nosql;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import example.nosql.StudentDetailsDTO;

/**
 * @author www.javaworkspace.com
 * 
 */
public class Controller extends HttpServlet {
	static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		List list = new ArrayList();
		HttpSession httpSession = request.getSession();

		/*
		 * Hard-coded sample data. Normally this would come from a real data
		 * source such as a database
		 */

		list.add(new StudentDetailsDTO("Mark", "John", 25, "India"));
		list.add(new StudentDetailsDTO("Harry", "Scott", 35, "England"));
		list.add(new StudentDetailsDTO("Nathan", "Ridley", 12, "America"));
		list.add(new StudentDetailsDTO("Tom", "Hanks", 55, "France"));
		list.add(new StudentDetailsDTO("Roger", "Chris", 65, "Germany"));
		list.add(new StudentDetailsDTO("Antony", "Jason", 45, "Denmark"));

		httpSession.setAttribute("studentDetails", list);
		RequestDispatcher dispatcher = request
				.getRequestDispatcher("View.jsp");
		// RequestDispatcher dispatcher = request
		// .getRequestDispatcher("reportWithoutPagination.jsp");
		// RequestDispatcher dispatcher = request
		// .getRequestDispatcher("simpleReport.jsp");
		dispatcher.forward(request, response);

	}
}