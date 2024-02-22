<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		
		<!-- Website Title & Description for Search Engine purposes -->
		<title></title>
		<meta name="description" content="">
		
		<!-- Mobile viewport optimized -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		
		<!-- Bootstrap CSS -->
		<link href="asset/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="asset/includes/css/bootstrap-glyphicons.css" rel="stylesheet">
		<link href="asset/includes/css/signin.css" rel="stylesheet">
		<link href="asset/includes/css/sticky-footer.css" rel="stylesheet">
		
		<!-- Custom CSS -->
		<link href="asset/includes/css/styles.css" rel="stylesheet">
		
		<script type="text/javascript" src="asset/js/jquery-2.1.1.min.js"></script>
		<script type="text/javascript" src="asset/js/custom.js"></script>

	</head>
	<body>
	
		<h align="center">Welcome to the Carty Meats Web site</head> 
		<div class="container" id="main">
			<br></br>
			<h:outputText>Select Options:</h:outputText>
			<br></br>
			<a href="views/employeeregister.jsp">Register</a>
			<br></br>
			<a href="views/employeelogin.jsp">Login</a>
		</div><!-- end container -->

	<!-- All Javascript at the bottom of the page for faster page loading -->
		
	<!-- First try for the online version of jQuery-->
	<script src="https://code.jquery.com/jquery.js"></script>
	
	<!-- If no online access, fallback to our hardcoded version of jQuery -->
	<script>window.jQuery || document.write('<script src="assets/includes/js/jquery-1.8.2.min.js"><\/script>')</script>
	
	<!-- Bootstrap JS -->
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	
	</body>
</html>