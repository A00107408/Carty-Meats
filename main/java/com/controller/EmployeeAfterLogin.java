package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class EmployeeAfterLogin
 */
@WebServlet("/EmployeeAfterLogin")
public class EmployeeAfterLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//private static String INSERT_OR_EDIT = "/gpedit.jsp";
	private static String LIST_USER = "/success.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeAfterLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String forward="";
	    String action = request.getParameter("action");
	    
	    if (action.equalsIgnoreCase("listUser")){
	    	forward = LIST_USER;
	           
	        RequestDispatcher view = request.getRequestDispatcher(forward);
	   	    view.forward(request, response);
	    }else {
	    	System.out.println("Eoghan: routing problem");
	    	response.getWriter().append("Eoghan: No success").append(request.getContextPath());
	    }   
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
