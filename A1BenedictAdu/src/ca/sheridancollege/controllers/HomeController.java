package ca.sheridancollege.controllers;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ca.sheridancollege.beans.Tracker;
import ca.sheridancollege.dao.DAO;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("/HomeController")
public class HomeController extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public HomeController()
	{
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		//String department = request.getParameter("department");
		

		request.getRequestDispatcher("form.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List<Tracker> errorList;
		
		String message = request.getParameter("message");
		String department = request.getParameter("department");

		Tracker tracker= new Tracker(message, department);
		DAO dao = new DAO();
		 
		dao.populate(tracker);
		
		errorList=dao.queryErrorByDepartment(department);
		
		request.setAttribute("errorList", errorList);
		request.setAttribute("department", tracker.getDepartment());
		request.setAttribute("message", tracker.getMessage());
		
		//this is not necessary but i made it so after submitting it shows the list as confirmation that it worked. 
		request.getRequestDispatcher("errorList.jsp").forward(request, response);
		doGet(request,response);
		

	}

}
