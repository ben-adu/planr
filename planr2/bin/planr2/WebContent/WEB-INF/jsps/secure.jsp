<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/js/materialize.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<script src="scripts/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/sweetalert.css">
<link rel="stylesheet" href="css/style.css">
<title>Home</title>

<script>
	(function($) {
		$(function() {

			$('.button-collapse').sideNav();

		}); // end of document ready
	})(jQuery); // end of jQuery name space
</script>
<script>
	document.addEventListener("DOMContentLoaded", function() {
		$('.preloader-background').delay(1700).fadeOut('slow');

		$('.preloader-wrapper').delay(1700).fadeOut();
	});
</script>

</head>
<body>

	<div class="preloader-background">
		<div class="preloader-wrapper big active">
			<div class="spinner-layer spinner-blue-only">
				<div class="circle-clipper left">
					<div class="circle"></div>
				</div>
				<div class="gap-patch">
					<div class="circle"></div>
				</div>
				<div class="circle-clipper right">
					<div class="circle"></div>
				</div>
			</div>
		</div>
	</div>

	<!-- nav -->
	<nav class="default" role="navigation">
	<ul id="slide-out" class="side-nav">
		<li><div class="userView">
				<div class="background">
					<img src="images/lake.jpg">
				</div>
				<a href="#!user"><img class="circle" src="images/ben.jpg"></a>
				<a href="#!name"><span class="white-text name">Ben Adu</span></a> <a
					href="#!email"><span class="white-text email">ben@mail.com</span></a>
			</div></li>
		<c:url value="/logout" var="logOut" />
		<li><a href="${logOut}" class="waves-effect"><i
				class="material-icons">perm_identity</i>Log out</a></li>
	</ul>
	<a href="#" data-activates="slide-out"
		class="button-collapse show-on-large"><i class="material-icons">menu</i></a>
	<a href="secure" class="brand-logo center"><img src="images/mcs.png"
		height="80"></a> </nav>




	<!-- Body -->

	<div class="container">
		<div class="row">
			<!-- Cards -->
			<div class="col s4">
				<div class="card hoverable">
					<div class="card-image">
						<img src="images/leafs.jpg"> 
						<span class="card-title">Create Client Profile</span>
						<a class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
					</div>
					<div class="card-content">

						<div class="card-action">
							<a href="form">Click here to create client Profile</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col s4">
				<div class="card hoverable">
					<div class="card-image">
						<img src="images/guide.png">
						 <span class="card-title">View Customers</span>
						 <a class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
					</div>
					<div class="card-content">

						<div class="card-action">
							<a href="display">Click here to view customers</a>
						</div>
					</div>
				</div>
			</div>
			<div class="col s4">
				<div class="card hoverable">
					<div class="card-image">
						<img src="images/dan.jpg"> <span class="card-title">View Inventory</span>
						<a class="btn-floating halfway-fab waves-effect waves-light red"><i class="material-icons">add</i></a>
					</div>
					<div class="card-content">

						<div class="card-action">
							<a href="inventory">Click here to view inventory</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>