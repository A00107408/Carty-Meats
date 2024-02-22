<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
 pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<!-- Website Title & Description for Search Engine purposes -->
		
		<meta charset="ISO-8859-1">
		<title>Employee Register</title>
	
		<!-- Mobile viewport optimized -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		
		<!-- Bootstrap CSS -->
		<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="assets/includes/css/bootstrap-glyphicons.css" rel="stylesheet">
		<link href="assets/includes/css/sticky-footer.css" rel="stylesheet">
		
		<!-- Custom CSS -->
		<link href="assets/includes/css/styles.css" rel="stylesheet">
		<link href="assets/includes/css/signin.css" rel="stylesheet">
		
		<!-- JavaScripts -->
		<script type="text/javascript" src="assets/js/jquery-1.8.2.min.js"></script>
		<script type="text/javascript" src="resources/js/modernizr-2.6.2.js"></script>
	</head>
	<body>
	
	 <div class="container" align="center">	  
	 	<h1 class="form-register-heading">Employee Register Form</h1>
	  	<form class="form-register" method="post" action="<%= request.getContextPath() %>/register" >
		   <table style="with: 80%">
		    <tr>
		     <td>First Name</td>
		     <td><input type="text" name="firstName" /></td>
		    </tr>
		    <tr>
		     <td>Last Name</td>
		     <td><input type="text" name="lastName" /></td>
		    </tr>
		    <tr>
		     <td>UserName</td>
		     <td><input type="text" name="username" /></td>
		    </tr>
		    <tr>
		     <td>Password</td>
		     <td><input type="password" name="password" /></td>
		    </tr>
		    <tr>
		     <td>Address</td>
		     <td><input type="text" name="address" /></td>
		    </tr>
		    <tr>
		     <td>Contact No</td>
		     <td><input type="text" name="contact" /></td>
		    </tr>
		   </table>
		   <br></br>
		   <button class="btn btn-lg btn-primary btn-block" type="submit" />Register</button>
	  </form>
	 
	 </div>
	 
	 <!-- All Javascript at the bottom of the page for faster page loading -->
		
	<!-- First try for the online version of jQuery-->
	<script src="https://code.jquery.com/jquery.js"></script>
	
	<!-- If no online access, fallback to our hardcoded version of jQuery -->
	<script>window.jQuery || document.write('<script src="assets/includes/js/jquery-1.8.2.min.js"><\/script>')</script>
	
	<!-- Bootstrap JS -->
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Custom JS 
	<script src="resources//includes/js/script.js"></script> -->
	
	</body>
</html>