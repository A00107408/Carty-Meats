<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<!-- Website Title & Description for Search Engine purposes -->
		<title>Carty Meats Web Service</title>
		<meta name="description" content="Edit or delete employees after login">
		
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

		<style>
		table, th, td {
		    border: 1px solid black;
		    border-collapse: collapse;
		}
		th, td {
		    padding: 5px;
		}
		</style>
	<body>

		<div class="container" id="main">

			<div class="navbar navbar-fixed-top">
				<div class="container" style="padding: 0;">
					
					<button class="navbar-toggle" data-target=".navbar-responsive-collapse" data-toggle="collapse" type="button">
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>

					<a class="navbar-brand" href="/"><img src="assets/images/CartyMeats.png" width="63" height="64" alt="Your Logo"></a>

					<div class="nav-collapse collapse navbar-responsive-collapse">
						<ul class="nav navbar-nav">
							<li>
								<a href="index.jsp">Home</a>
							</li>
							<li class="dropdown">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown">Services<strong class="caret"></strong></a>
									<ul class="dropdown-menu">
										<li>
											<a href="index.jsp">Login</a>
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


			
	<br><br><br>
	<div style="width: 150px;">		      
	 	<h3>Rep. Sign In:</h3>
		<input type="submit" class="btn btn-lg btn-primary btn-block" name="uploadsubmit" id="btnupload" value="Login"  onclick="javascript:location.href='views/employeelogin.jsp'"/>
	</div>		        

	</div><!-- end container -->

	<footer class="footer">
		<div class="container">
			<div class="row">
				<img src="assets/images/TUS.png" width="43" height="44" alt="Made by TUS" title="Made by TUS">
				<p>&copy; 2024 TUS</p>
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
	
</html>