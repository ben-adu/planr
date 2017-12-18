<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<script src="scripts/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/sweetalert.css">
<link rel="stylesheet" href="css/style.css">
<title>MCS Rentals</title>
<script>
	(function($) {
		$(function() {

			$('.button-collapse').sideNav();

		}); // end of document ready
	})(jQuery); // end of jQuery name space
</script>
<script>
	
	$(document).ready(function() {
		$('select').material_select();

	});
</script>

<body>
	<!-- NAV -->
	<sec:authorize access="hasRole('ROLE_USER')">
		<nav class="default" role="navigation">
		<ul id="slide-out" class="side-nav">
			<li><div class="userView">
					<div class="background">
						<img src="images/lake.jpg">
					</div>
					<a href="#!user"><img class="circle" src="images/ben.jpg"></a>
					<a href="#!name"><span class="white-text name">${pageContext.request.userPrincipal.name}</span></a>
					<a href="#!email"><span class="white-text email">ben@mail.com</span></a>
				</div></li>
			<c:url value="planEvent" var="client" />
			<li><a href="planEvent" class="waves-effect"><i
					class="material-icons">perm_identity</i>Plan Event</a></li>
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
	</sec:authorize>
	<!--  END OF NAV -->


	<div class="container">
		<h4 style="text-align: center">Equipment Rentals</h4>
		<div class="row col s12">
			<div class="input-field col s8" required="">
				<span><B>Metal barricades</B></span><BR> <span>7' x
					3.67'</span> <select required="" id="metalBarricade" name="metalBarricade">
					<option value="" disabled selected>Choose one</option>
					<option value="self">Set up yourself</option>
					<option value="city">Set up by City staff at additional
						cost**</option>
				</select>
			</div>
		</div>

		<div class="row col s12">
			<div class="input-field col s8" required="">
				<span><B>Picnic tables</B></span><BR> <span>regular 5' x
					6', accessible 5' x 7'</span> <select required="" id="picnicTable"
					name="picnicTable">
					<option value="" disabled selected>Choose one</option>
					<option value="self">Set up yourself</option>
					<option value="city">Set up by City staff at additional
						cost**</option>
				</select>
			</div>
		</div>

		<div class="row col s12">
			<div class="input-field col s8" required="">
				<span><B>White picket fences</B></span><BR> <span>6' x
					3.4'</span> <select required="" id="whiteFence" name="whiteFence">
					<option value="" disabled selected>Choose one</option>
					<option value="remain">Remain in current default location</option>
					<option value="remove">Remove from site</option>
					<option value="city">Set up by City staff at additional
						cost**</option>
				</select>
			</div>
		</div>

		<div class="row col s12">
			<div class="input-field col s8" required="">
				<span><B>Umbrellas</B></span><BR> <span>10' x 10'</span> <select
					required="" id="umbrella" name="umbrella">
					<option value="" disabled selected>Choose one</option>
					<option value="remain">Remain in current default location</option>
					<option value="remove">Remove from site</option>
					<option value="city">Set up by City staff at additional
						cost**</option>
				</select>
			</div>
		</div>

		<div class="row col s12">
			<div class="input-field col s8" required="">
				<span><B>Bistro tables and chairs</B></span><BR> <select
					required="" id="bistroTable" name="bistroTable">
					<option value="" disabled selected>Choose one</option>
					<option value="self">Set up yourself</option>
					<option value="remain">Remain in current default location</option>
					<option value="remove">Remove from site</option>
					<option value="city">Set up by City staff at additional
						cost**</option>
				</select>
			</div>
		</div>

		<div class="row col s12">
			<div class="input-field col s8">
				<textarea id="rentalNotes" name="rentalNotes"
					class="materialize-textarea"></textarea>
				<label for="notes1">Additional notes about equipment</label>
			</div>
		</div>

		<div class="row">
			<div class="col s6">
				<a id="btnBack2" class="waves-effect waves-light btn-large"
					style="display: block" href="rentals">Back</a>
			</div>
			<div class="col s6">

				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" /> <a id="btnContinue3" type="submit"
					onclick="verify()" class="waves-effect waves-light btn-large"
					style="display: block" href="vendors">Next</a>
			</div>
		</div>
	</div>

	</div>
</body>
</html>