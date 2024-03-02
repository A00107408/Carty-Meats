<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
	<head>
		
		<!-- Website Title & Description for Search Engine purposes -->
		<title></title>
		<meta name="description" content="">
		
		<!-- Mobile viewport optimized -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
		
		<!-- Bootstrap CSS -->
		<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="assets/includes/css/bootstrap-glyphicons.css" rel="stylesheet">
		<link href="assets/includes/css/signin.css" rel="stylesheet">
		<link href="assets/includes/css/sticky-footer.css" rel="stylesheet">
		
		<!-- Custom CSS -->
		<link href="assets/includes/css/styles.css" rel="stylesheet">
		
		<script type="text/javascript" src="assets/js/jquery-2.1.1.min.js"></script>
		<script type="text/javascript" src="assets/js/custom.js"></script>

	</head>
	<body>
	
		<div class="container" id="main">

			<div class="navbar navbar-fixed-top">
				<div class="container" style="padding: 0;">
					
					<button class="navbar-toggle" data-target=".navbar-responsive-collapse" data-toggle="collapse" type="button">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>

					<a class="navbar-brand" href="/"><img src="assets/images/CartyMeats.png" width="45" height="44" alt="Your Logo"></a>

					<div class="nav-collapse collapse navbar-responsive-collapse">
						<ul class="nav navbar-nav">
							<li>
								<a href="index.jsp">Home</a>
							</li>
							<li class="dropdown">
								<a href="https://tus.ie/" class="dropdown-toggle" data-toggle="dropdown">Services<strong class="caret"></strong></a>
									<ul class="dropdown-menu">
										<li>
											<a href="index.jsp">Rep Login</a>
										</li>										
										<li class="divider"></li>

										<li class="dropdown-header">More Services</li>
										<li>
											<a href="views/about.jsp">About Us</a>
										</li>
										<li>
											<a href="https://www.facebook.com/olivercartyandfamily/">Social Media</a>
										</li>
									</ul>
							</li>
						</ul>

						<form class="navbar-form pull-left"  >
							<input type="text" class="form-control" placeholder="Search product..." id="searchInput">
							<button type="submit" class="btn btn-default"><span class="glyphicon glyphicon-search"></span></button>
						</form><!-- end navbar-form -->
						
						<ul class="nav navbar-nav pull-right">
							<li>
								<a href="#"><span class="glyphicon glyphicon-user"></span>My Account</a>
							</li>
						</ul><!-- end nav pull-right -->

					</div><!-- end nav-collapse -->
				</div><!-- end container -->
				
			</div><!-- end navbar-->

			<div class="row" id="featuresHeading">
				<div class="col-12">
					
				</div>				
			</div>


			<div class="container">
			 	<form class="form-signin"  method="post" action="EmployeeAfterLogin">
			       
			        <h2 class="form-signin-heading">Edit Employee</h2><br>        
			        
			        <label for="Employee First Name: " class="sr-only">Employee First Name</label>
			        <input type="text" id="inputEmployeeFirstName" class="form-control" placeholder="Employee First Name" name="employeefirstname" required autofocus
			        value = '<c:out value="${employee.firstName}"></c:out>'><br>
			        
			        <label for="Employee Last Name: " class="sr-only">Employee Last Name</label>
			        <input type="text" id="inputEmployeeLastName" class="form-control" placeholder="Employee Last Name" name="employeelastname" required autofocus
			        value = '<c:out value="${employee.lastName}"></c:out>'><br>
			        
			        <label for="Employee Username" class="sr-only">Employee Username</label>
			        <input type="text" id="inputUsername" class="form-control" placeholder="Employee username" name="employeeusername" required autofocus
			        value='<c:out value="${employee.username}"></c:out>'><br>
			        
			        <label for="Employee Password" class="sr-only">Employee Password</label>
			        <input type="text" id="inputEmployeePassword" class="form-control" placeholder="Employee Password" name="employeepassword" required autofocus
			        value = '<c:out value="${employee.password}"></c:out>'><br>
			        
			        <label for="Employee Address" class="sr-only">Employee Address</label>
			        <input type="text" id="inputGPAddress" class="form-control" placeholder="Employee Address" name="employeeaddress" required autofocus
			        value = '<c:out value="${employee.address}"></c:out>'><br>
			        
			        <label for="Employee Contact" class="sr-only">Employee Contact</label>  
			        <input type="text" id="inputEmployeeContact" class="form-control" placeholder="Employee Contact" name="employeecontact" required autofocus
			        value = '<c:out value="${employee.contact}"></c:out>'><br>
			       	
			       	<br>
			        <button class="btn btn-lg btn-primary btn-block" type="submit">Update</button><br><br>
			     </form>
				
			</div>
		</div><!-- end container -->

		<footer class="footer">
			<div class="container">
				<div class="row">
						<img src="assets/images/TUS.png" width="63" height="64" alt="TUS Powered" title="TUS Powered">
					<p>&copy; 2024 TUSy</p>
				</div>
			</div>
		</footer>
	

	<!-- All Javascript at the bottom of the page for faster page loading -->
		
	<!-- First try for the online version of jQuery-->
	<script src="https://code.jquery.com/jquery.js"></script>
	
	<!-- If no online access, fallback to our hardcoded version of jQuery -->
	<script>window.jQuery || document.write('<script src="assets/includes/js/jquery-1.8.2.min.js"><\/script>')</script>
	
	<!-- Bootstrap JS -->
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	
	<!-- Custom JS -->
	<script src="assets/includes/js/script.js"></script>
	
	</body>