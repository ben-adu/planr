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
<title>Vendors</title>
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
     <h4 style="text-align: center">Vendors</h4>
     <div class="row">
     	<div id="inflate1" class="input-field col s12"><BR><BR><BR>
						<input id="inflateOne" type="number" min="0" step="1" required="" class="validate" placeholder="Enter a number">
					<h1><label>How many Inflatables (sports zone type) are you bringing onsite?***</label></h1>
		</div>
     </div>
     
     <div class="row">
     	<div id ="size1" class="input-field col s12"><BR><BR><BR>
						<input id="inflateOneSize" type="text">
					<h1><label>Provide the size of each sports zone type inflatable</label></h1>
		</div>
     </div>
     
     <div class="row">
     	<div id="inflate2" class="input-field col s12"><BR><BR><BR>
						<input id="inflateTwo" type="number" min="0" max="3" step="1" required="" class="validate" placeholder="Enter a number">
					<h1><label>How many Inflatables (bouncy castle type) are you bringing onsite?***</label></h1>
		</div>
     </div>
     
     <div class="row">
     	<div id ="size2" class="input-field col s12"><BR><BR><BR>
						<input id="inflateTwoSize" type="text">
					<h1><label>Provide the size of bouncy castle type inflatable</label></h1>
		</div>
     </div>
     
     <div class="row">
     	<div id="games1" class="input-field col s12"><BR><BR><BR>
						<input id="gamesNum" type="number" min="0" step="1" required="" class="validate" placeholder="Enter a number">
					<h1><label>Are you bringing rides or games onsite (ex: train, plush animals, tennis)?***</label></h1>
		</div>
     </div>
     
     <div class="row">
     	<div id ="games2" class="input-field col s12"><BR><BR><BR>
						<input id="gamesType" type="text">
					<h1><label>If bringing rides or games onsite, what kind?***</label></h1>
		</div>
     </div>
     
     <div class="row">
     	<div id ="games3" class="input-field col s12"><BR><BR><BR>
			<input id="gamesSize" type="text">
				<h1><label>Provide the size of the area required for ride or game set-up</label></h1>
		</div>
     </div>
     
     
		<div class="row">
   			<div id="foodTruck1" class="input-field col s12"><BR><BR><BR>
				<input id="foodTruckNum" type="number" min="0" step="1" required="" class="validate" placeholder="Enter a number">
					<h1><label>How many food trucks are you bringing onsite?</label></h1>
			</div>
   		</div>
   		
   		<div class="row">
   			<div id="trailer1" class="input-field col s12"><BR><BR><BR>
				<input id="trailerNum" type="number" min="0" step="1" required="" class="validate" placeholder="Enter a number">
					<h1><label>How many trailers or food storage vehicles are you bringing onsite?</label></h1>
			</div>
   		</div>
   		
   		<div class="row">
	     	<div id ="trailer2" class="input-field col s12"><BR><BR><BR>
					<textarea id="trailerDimension" class="materialize-textarea"></textarea>
						<h1><label for="trailerDimension">If bringing trailers or food storage vehicles onsite, provide the dimensions for each</label></h1>
			</div>
     </div>
     
     <div class="row">
   			<div id="displayCar1" class="input-field col s12"><BR><BR><BR>
				<input id="displayCarNum" type="number" min="0" step="1" required="" class="validate" placeholder="Enter a number">
					<h1><label>How many display cars are you bringing onsite?</label></h1>
			</div>
   		</div>
   		
   		<div class="row">
	     	<div id ="displayCar2" class="input-field col s12"><BR><BR><BR>
					<textarea id="displayCarDetails" class="materialize-textarea"></textarea>
						<h1><label for="displayCarDetails">If bringing display cars onsite, provide the details for each </label></h1>
			</div>
     </div>
     
     <div class="row">
   			<div id="displayTruck1" class="input-field col s12"><BR><BR><BR>
				<input id="displayTruckNum" type="number" min="0" step="1" required="" class="validate" placeholder="Enter a number">
					<h1><label>How many display trucks are you bringing onsite?</label></h1>
			</div>
   		</div>
   		
   		<div class="row">
	     	<div id ="displayTruck2" class="input-field col s12"><BR><BR><BR>
					<textarea id="displayTruckDetails" class="materialize-textarea"></textarea>
						<h1><label for="displayTruckDetails">If bringing display trucks onsite, provide the details for each</label></h1>
			</div>
     </div>
     
     
		<BR><BR><BR>
		<div class="row">
			<div class="col s6">
				  <a id="btnBack3" class="waves-effect waves-light btn-large" style="display: block"
					href="mcsRentals" >Back</a> 
			</div>  
			
			<div class="col s6">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
				<a id="btnContinue4" type="submit" onclick="verify()" class="waves-effect waves-light btn-large" style="display: block"
					href="agreement">Next</a>
			</div>
		</div>
		
     
    </form>
    
    </div>
</body>
</html>