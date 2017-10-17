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
<title>Site Layout</title>

<script>
	(function($) {
		$(function() {

			$('.button-collapse').sideNav();

		}); // end of document ready
	})(jQuery); // end of jQuery name space
</script>
</head>
<body>
	<!-- NAV -->
	<nav class="default" role="navigation">
		<ul id="slide-out" class="side-nav">
			<li><div class="userView">
					<div class="background">
						<img src="images/lake.jpg">
					</div>
					<a href="#!user"><img class="circle" src="images/ben.jpg"></a>
					<a href="#!name"><span class="white-text name">ANKIT SHAH</span></a> <a
						href="#!email"><span class="white-text email">ben@mail.com</span></a>
				</div></li>
			<c:url value="createLayout" var="client" />
			<li><a href="createLayout" class="waves-effect"><i
					class="material-icons">perm_identity</i>Create Site Layout</a></li>
			<c:url value="manageLayout" var="client" />
			<li><a href="manageLayouts" class="waves-effect"><i
					class="material-icons">business</i>Manage Site Layouts</a></li>
			<c:url value="electrical" var="inventory" />
			<li><a href="electrical" class="waves-effect"><i
					class="material-icons">devices_other</i>View Electrical Map</a></li>
			<c:url value="guidelines" var="siteLayout" />
			<li><a href="guidelines" class="waves-effect"><i
					class="material-icons">map</i>Planning Guidelines</a></li>
			<c:url value="secure" var="client" />
			<li><a href="secure" class="waves-effect"><i
					class="material-icons">arrow_back</i>Back to Main Menu</a></li>
			<c:url value="logout" var="logout" />
			<li><a href="${logout}" class="waves-effect"><i
					class="material-icons">perm_identity</i>Logout</a></li>
		</ul>
		<a href="#" data-activates="slide-out"
			class="button-collapse show-on-large"><i class="material-icons">menu</i></a>
		<a href="secure" class="brand-logo center"><img
			src="images/mcs.png" height="80"></a> </nav>
	<!--  END OF NAV -->
	

	<!-- Body -->

	<div class="container">
	
		<h4>Welcome Ankit Shah</h4>
		<div class="row">
			<div class="col s6">
				<a class="waves-effect waves-light btn-large" style="display: block"
					href="createLayout">Create Site Layout</a>
			</div>
			<div class="col s6">
				<a class="waves-effect waves-light btn-large" style="display: block"
					href="manageLayouts">Manage Site Layout</a>
			</div>

		</div>
		<div class="row">
		<!--  
			<div class="col s6">
				<a class="waves-effect waves-light btn-large" style="display: block"
					href="viewMap">View Site Map</a>
			</div>
			-->
			<div class="col s6">
				<a class="waves-effect waves-light btn-large" style="display: block"
					href="electrical">View Electrical Map</a>
			</div>
			<div class="col s6">
				<a class="waves-effect waves-light btn-large" style="display: block"
					href="guidelines">Guidelines</a>
			</div>

		</div>
		<div class="row">
			
		</div>

	</div>
	

</body>
</html>