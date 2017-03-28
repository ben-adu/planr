<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Log Error</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<link rel="stylesheet"
	href="css.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<!-- navbar  -->
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Error Tracker</a>
		</div>
		<ul class="nav navbar-nav">
			<li class="active"><a href="#">Home</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="#"><span class="glyphicon glyphicon-user"></span>
					Benedict Adu</a></li>
		</ul>
	</div>
	</nav><br></br>
	<!-- end of navbar -->
	
	<div class="col-sm-2 sidenav"></div>
	<!-- form begins -->
	<div class="col-sm-8 text-left">
		<form method="post" action="HomeController">
			<label for="message">Please input the error</label>
			<textarea rows="5" class="form-control" name="message">

		</textarea>
			<div class="">
				<label>Please select Department: </label> <select name="department"
					class="form-control">
					<option value="CustomerService">Customer Service</option>
					<option value="Billing">Billing</option>
					<option value="Sales">Sales</option>
					<option value="TechnicalSupport">Technical Support</option>
				</select> <br />
				<button type="submit" class="btn btn-default">Submit</button>
			</div>
		</form>
	</div>
	
	<!-- form ends -->
	<div class="col-sm-2 sidenav"></div>
	
	<!-- footer -->
	<div class="navbar navbar-inverse navbar-fixed-bottom">
		<div class="container">
			<ul class="nav navbar-nav navbar-left">
				<li><a href="ErrorProcessing?department=CustomerService">CustomerService</a></li>
				<li><a href="ErrorProcessing?department=Billing">Billing</a></li>
				<li><a href="ErrorProcessing?department=Sales">Sales</a></li>
				<li><a href="ErrorProcessing?department=TechnicalSupport">TechnicalSupport</a></li>
			</ul>
		</div>
	</div>
	<!-- end of footer -->

</body>
</html>