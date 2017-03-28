<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="css.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script>
	function goBack() {
		window.history.back()
	}
</script>


<title>Departments</title>
</head>
<body>
	<!-- header -->
	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="form.jsp">Error Tracker</a>
		</div>
		<ul class="nav navbar-nav">
			<li class=><a href="form.jsp">Home</a></li>
		</ul>
		<ul class="nav navbar-nav navbar-right">
			<li><a href="form.jsp"><span
					class="glyphicon glyphicon-user"></span> Benedict Adu</a></li>
		</ul>
	</div>
	</nav>
	<!-- end of header -->
	<div class="col-sm-2 sidenav">
		<!-- back button -->
		</br> </br>
		<button onClick="goBack()" class="btn btn-default" type="button">
			<i class="fa fa-arrow-circle-o-left"></i>
		</button>
		<!-- end of back button -->
	</div>

	<!-- Error list displays here -->
	<div class="col-sm-8 text-left">
		<form method="post" action="ErrorProcessing">
			<br /> <br />
			<c:forEach var="item" items="${errorList}">
				<div class="panel panel-primary">
					<div class="panel-heading">Error</div>
					<div class="panel-body">
						<h2>Department: ${item.department}</h2>
						<h2>Message: ${item.message}</h2>
						<br /> <br /> <br />
					</div>
				</div>
			</c:forEach>
	</div>
	</form>
	</div>


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