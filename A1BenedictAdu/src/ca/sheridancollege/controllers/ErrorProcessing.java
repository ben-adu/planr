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
 * Servlet implementation class ErrorProcessing
 */
@WebServlet("/ErrorProcessing")
public class ErrorProcessing extends HttpServlet
{
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ErrorProcessing()
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
		DAO dao = new DAO();
		String department = request.getParameter("department");

		List<Tracker> errorList;

		String message = request.getParameter("department");
		errorList = dao.queryErrorByDepartment(department);
		request.setAttribute("errorList", errorList);

		request.getRequestDispatcher("errorList.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		
	}

}
