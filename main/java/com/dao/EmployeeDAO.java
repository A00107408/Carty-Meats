package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import java.util.List;
import java.util.ArrayList;

import com.model.Employee;

public class EmployeeDAO {

	public static Connection getConnection() {

	    Connection connection = null;
	    try {
	      //Class.forName("com.mysql.jdbc.Driver");
	      connection = DriverManager.getConnection(
	    		  "jdbc:mysql://localhost:3306/employees", "root", "root");
	    } catch (Exception e) {
	      e.printStackTrace();
	    }
	    return connection;
	}
	
	public int registerEmployee(Employee employee) throws ClassNotFoundException {
        
		//Create the MySQL statement for inserting the employee
		String INSERT_USERS_SQL = "INSERT INTO employee" +
            "  (first_name, last_name, username, passwrd, address, contact) VALUES " +
            " (?, ?, ?, ?, ?, ?);";

        int result = 0;

        try (Connection connection = getConnection();

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            //preparedStatement.setInt(1, 1);
            preparedStatement.setString(1, employee.getFirstName());
            preparedStatement.setString(2, employee.getLastName());
            preparedStatement.setString(3, employee.getUsername());
            preparedStatement.setString(4, employee.getPassword());
            preparedStatement.setString(5, employee.getAddress());
            preparedStatement.setString(6, employee.getContact());

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }
	
	public static Employee checkLogin(String userName, String password) {
	    
		Connection connection = getConnection();
	    Employee employee = null ;

	    try {
	      PreparedStatement psmt = connection.prepareStatement("SELECT * FROM employee WHERE username = ? AND passwrd = ?");
	      psmt.setString(1, userName);
	      psmt.setString(2, password);
	      ResultSet rs = psmt.executeQuery();
	      if (rs.next()) {
	        employee = new Employee(rs.getString("first_Name"), rs.getString("last_Name"), rs.getString("userName"), rs.getString("passwrd"), rs.getString("address"), rs.getString("contact"));
	      }
	    } catch (SQLException e) {
	      e.printStackTrace();
	    }
	    return employee;
	}
	
	public List<Employee> getAllEmployees(){

		Connection connection = getConnection();
	    
		List<Employee> employeeList = new ArrayList<Employee>();
	    
		try {
	    	Statement statement = connection.createStatement();
	        ResultSet rs = statement.executeQuery("select * from employee");
	        while (rs.next()) {
	        	Employee employee = null;
	        	employee = new Employee(rs.getString("first_Name"), rs.getString("last_Name"), rs.getString("userName"), rs.getString("passwrd"), rs.getString("address"), rs.getString("contact"));
	        	if(employee.getFirstName() == null) {
	        		System.out.println("Didnt get any employees.");
	        	}
	        	employeeList.add(employee);
	        }
	    }catch (SQLException e) {
	    	System.out.println("Exception: "+e);
	    }    
	    return employeeList;
	}
	
	public void deleteEmployee(String username) {
	  			
		Connection connection = getConnection();
		try {
	      
			PreparedStatement preparedStatement = connection.prepareStatement("delete from employee where username=?");
	      
			// Parameters start with 1
			preparedStatement.setString(1, username);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}	
  
	public Employee getEmployeeByUsername(String username) {
		
		Connection connection = getConnection();
    	Employee employee = null;
        
    	try {
            PreparedStatement preparedStatement = connection.
                    prepareStatement("select * from employee where username=?");
            preparedStatement.setString(1, username);
            ResultSet rs = preparedStatement.executeQuery();

            if (rs.next()) {
            	employee = new Employee(rs.getString("first_name"), rs.getString("last_name"), rs.getString("username"), rs.getString("passwrd"), rs.getString("address"), rs.getString("contact"));            	
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return employee;
    }
	
	public void updateEmployee(Employee employee) {
		    	
		Connection connection = getConnection();
        
		try {
            PreparedStatement preparedStatement = connection
                    .prepareStatement("update employee set first_name=?, last_name=?, username=?, passwrd=?, address=?, contact=?" +
                            "where username=?");
            // Parameters start with 1
            preparedStatement.setString(1, employee.getFirstName());
            preparedStatement.setString(2, employee.getLastName());
            preparedStatement.setString(3, employee.getUsername());
            preparedStatement.setString(4, employee.getPassword());
            preparedStatement.setString(5, employee.getAddress());
            preparedStatement.setString(6, employee.getContact());
            preparedStatement.setString(7, employee.getUsername());
     
            preparedStatement.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
	
	private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}