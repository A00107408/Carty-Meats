package com.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.EmployeeDAO;
import com.model.Employee;

/**
 * Servlet implementation class EmployeeAfterLogin
 */
@WebServlet("/EmployeeAfterLogin")
public class EmployeeAfterLogin extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	private static String EMPLOYEE_EDIT = "views/employeeedit.jsp";
	private static String LIST_EMPLOYEES = "views/success.jsp";
	
	private EmployeeDAO dao;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public EmployeeAfterLogin() {
        super();
        dao = new EmployeeDAO();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String forward = "";
	    String action = request.getParameter("action");
	    
	    if (action.equalsIgnoreCase("delete")){
	    	String username = request.getParameter("username");	    	
	    	
	    	dao.deleteEmployee(username);
	        forward = LIST_EMPLOYEES;
	        request.setAttribute("employee", dao.getAllEmployees());    
	    }
		else if (action.equalsIgnoreCase("edit")){
			forward = EMPLOYEE_EDIT;
	        String username = request.getParameter("username");
	        Employee employee = dao.getEmployeeByUsername(username);
	        request.setAttribute("employee", employee);
		}
	    else if (action.equalsIgnoreCase("listUser")){
	    	forward = LIST_EMPLOYEES;
	    	
	    	List<Employee> EmployeeList = dao.getAllEmployees();
	        request.setAttribute("employee", EmployeeList);
	    }else {	    	
	    	System.out.println("No appropriate action received");
	    	RequestDispatcher view = request.getRequestDispatcher("/nosuccess.jsp");
	    	view.forward(request, response);
	    }  
	    
	    RequestDispatcher view = request.getRequestDispatcher(forward);
	    view.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Employee employee = null;
		
		String firstName = request.getParameter("employeefirstname");
		String lastName = request.getParameter("employeelastname");
		String userName = request.getParameter("employeeusername");
		String password = request.getParameter("employeepassword");
		String address = request.getParameter("employeeaddress");
		String contact = request.getParameter("employeecontact");
				
		employee = new Employee(firstName, lastName, userName, password, address, contact);
		
		dao.updateEmployee(employee);
	    RequestDispatcher view = request.getRequestDispatcher(LIST_EMPLOYEES);
	    request.setAttribute("employee", dao.getAllEmployees());
	    view.forward(request, response);
	}

}
