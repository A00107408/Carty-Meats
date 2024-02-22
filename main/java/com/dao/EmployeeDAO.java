package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.Employee;


//import com.placements.Employee;

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