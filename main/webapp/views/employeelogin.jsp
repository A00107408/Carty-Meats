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
		<link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="assets/includes/css/bootstrap-glyphicons.css" rel="stylesheet">
		<link href="assets/includes/css/signin.css" rel="stylesheet">
		<link href="assets/includes/css/sticky-footer.css" rel="stylesheet">
		
		<!-- Custom CSS -->
		<link href="assets/includes/css/styles.css" rel="stylesheet">
		
		<script type="text/javascript" src="assets/includes/js/jquery-2.1.1.min.js"></script>
		<script type="text/javascript" src="assets/includes/js/custom.js"></script>

	</head>
	<body>
	
		<div class="container" id="main">

			<div class="container" align="center">
			 <form class="form-signin"  method="post" action="<%= request.getContextPath() %>/login">
			        <h2 class="form-signin-heading">Representative Sign In</h2>
			        <label class="sr-only">User Name</label>
			        <input type="text" id="inputUserName" class="form-control" placeholder="User Name" name="userName" required autofocus>
			        <br></br>
			        <label for="inputPassword" class="sr-only">Password</label>
			        <input type="password" id="inputPassword" class="form-control" placeholder="Password" name="password" required>
			        <div class="checkbox">
			          <label>
			            <input type="checkbox" value="remember-me"> Remember me
			          </label>
			        </div>
			        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
			      </form>
				
			</div>

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