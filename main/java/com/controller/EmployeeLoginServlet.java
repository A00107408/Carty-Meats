package com.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.EmployeeDAO;
import com.model.Employee;

/**
 * Servlet implementation class EmployeeLoginServlet
 */
@WebServlet("/login")
public class EmployeeLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("views/employeelogin.jsp");
		dispatcher.forward(request,  response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String userName = request.getParameter("userName");
		String password =  request.getParameter("password");	
		
		Employee employee = EmployeeDAO.checkLogin(userName, password);
		if (employee != null) {
			System.out.println("Yes password matched");
		    HttpSession session = request.getSession();
		    session.setAttribute("employee", employee);
		    //request.getRequestDispatcher("success.jsp").forward(request, response);
		    //response.sendRedirect("EmployeeAfterLogin?action=listUser");
		    response.sendRedirect("views/success.jsp");
		} else {
		    request.getRequestDispatcher("views/nosuccess.jsp").forward(request, response);
		    System.out.println("No match found in DB");
		}
	}
}
