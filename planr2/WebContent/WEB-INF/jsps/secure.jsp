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

	<!-- NAV -->
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
		<c:url value="/clientManagement" var="client" />
		<li><a href="${client }" class="waves-effect"><i
				class="material-icons">perm_identity</i>Client Management</a></li>
		<c:url value="/clientManagement" var="client" />
		<li><a href="#" class="waves-effect"><i
				class="material-icons">business</i>Generate Reports</a></li>
		<c:url value="/inventoryManagement" var="inventory" />
		<li><a href="${ inventory}" class="waves-effect"><i
				class="material-icons">devices_other</i>Inventory management</a></li>
		<c:url value="#" var="siteLayout" />
		<li><a href="#" class="waves-effect"><i
				class="material-icons">map</i>Approved Site Layouts</a></li>
		<c:url value="/inventoryManagement" var="client" />
		<li><a href="#" class="waves-effect"><i
				class="material-icons">arrow_back</i>Back to Main Menu</a></li>
		<c:url value="/logout" var="logout" />
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
	<h4>Welcome Ben Adu</h4>
		<div class="row">
			<div class="col s6">
				<a class="waves-effect waves-light btn-large" style="display:block" href="/planr/clientManagement"><i
					class="material-icons left"  >perm_identity</i>Client Management</a>
			</div>
			<div class="col s6">
				<a class="waves-effect waves-light btn-large" style="display:block" href="/planr/inventoryManagement"><i
					class="material-icons left">devices_other</i>Inventory Management</a>
			</div>
		</div>
		<div class="row">
			<div class="col s6">
				<a class="waves-effect waves-light btn-large" style="display:block" href="#"><i
					class="material-icons left">business</i>Generate Reports</a>
			</div>
			<div class="col s6">
				<a class="waves-effect waves-light btn-large" style="display:block" href="#"><i
					class="material-icons left">map</i>Approve Site Layouts</a>
			</div>
		</div>
	</div>
	</div>

</body>
</html>