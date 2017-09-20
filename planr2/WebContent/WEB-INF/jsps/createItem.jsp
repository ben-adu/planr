<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
<title>Create client profile</title>

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
<script src="/scripts/index.js">
	
</script>
</head>
<body>
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
		<c:url value="/inventory" var="inventory" />
		<li><a href="" class="waves-effect"><i class="material-icons">perm_identity</i>Client
				Management</a></li>
		<c:url value="/logout" var="logOut" />
		<li><a href="${logOut}" class="waves-effect"><i
				class="material-icons">business</i>Generate Reports</a></li>
		<c:url value="/logout" var="logOut" />
		<li><a href="${logOut}" class="waves-effect"><i
				class="material-icons">devices_other</i>Inventory management</a></li>
		<c:url value="/logout" var="logOut" />
		<li><a href="${logOut}" class="waves-effect"><i
				class="material-icons">map</i>Approved Site Layouts</a></li>
		<c:url value="/logout" var="logOut" />
		<li><a href="${logOut}" class="waves-effect"><i
				class="material-icons">arrow_back</i>Back to Main Menu</a></li>
		<li><a href="${logOut}" class="waves-effect"><i
				class="material-icons">perm_identity</i>Log out</a></li>
	</ul>
	<a href="#" data-activates="slide-out"
		class="button-collapse show-on-large"><i class="material-icons">menu</i></a>
	<a href="secure" class="brand-logo center"><img
		src="images/mcs.png" height="80"></a> </nav>
	<!--  end of nav -->
	<div class="container ">
		<div class="row">
			<div class="col s12">
				<h4>Create Inventory</h4>
			</div>
		</div>
		<c:url value="saveItem" var="url" />
		<form:form commandName="inventory" method="post" action="${url}">
			<div class="row">
				<div class="col s6">
					<!-- left row -->
					<div class="input-field col s12">
						<input id="name" type="text" class="validate" name="name">
						<label for="name">Equipment Name</label>
					</div>
					<div class="input-field col s12">
						<input id="price" type="number" class="validate" name="price"
							min="0.01" step="0.01"> <label for="price">Price
							$</label>
					</div>
					<div class="input-field col s12">
						<input id="manufacturer" type="text" class="validate"
							name="manufacturer"> <label for="manufacturer">Manufacturer</label>
					</div>
					<div class="input-field col s12">
						<input id="quantity" type="number" class="validate"
							name="quantity" min="1" step="1"> <label for="quantity">Quantity</label>
					</div>
				</div>
				<!-- end of left row -->

				<!-- start of right row -->
				<div class="col s6">
					<div class="input-field col s12">
						<input type="text" id="description" name="description"></input> <label
							for="description">Description</label>
					</div>

					<div class="input-field col s12">
						<input type="date" class="datepicker" name="date" id="date">
					</div>
				</div>


				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" /> <input type="submit" value="Submit"
					class="btn waves-effect waves-light" />
			</div>
		</form:form>
	</div>

</body>
</html>