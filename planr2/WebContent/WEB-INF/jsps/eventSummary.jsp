<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<!-- 	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 --><link rel="stylesheet" href="css/style.css">
<!-- <link rel='stylesheet prefetch' href='https://cdn.jsdelivr.net/sweetalert2/6.1.1/sweetalert2.min.css'>
 --><title>Plan your event</title>

<script>
	(function($) {
		$(function() {

			$('.button-collapse').sideNav();

		}); // end of document ready
	})(jQuery); // end of jQuery name space
</script>
<body>
	<!-- ROLE_USER NAV -->
	<sec:authorize access="hasRole('ROLE_USER')">
		<nav class="default" role="navigation">
		<ul id="slide-out" class="side-nav">
			<li><div class="userView">
					<div class="background">
						<img src="images/lake.jpg">
					</div>
					<a href="#!user"><img class="circle" src="images/ben.jpg"></a>
					<a href="#!name"><span class="white-text name">${pageContext.request.userPrincipal.name}</span></a> <a
						href="#!email"><span class="white-text email">ben@mail.com</span></a>
				</div></li>
			<c:url value="eventSummary" var="client" />
			<li><a href="eventSummary" class="waves-effect"><i
					class="material-icons">map</i>Plan Event</a></li>
					
			<c:url value="manageLayout" var="client" />
			<li><a href="manageLayouts" class="waves-effect"><i
					class="material-icons">devices_other</i>Manage Site Layouts</a></li>
					
			<c:url value="electrical" var="inventory" />
			<li><a href="electrical" class="waves-effect"><i
					class="material-icons">business</i>View Electrical Map</a></li>
					
			<c:url value="guidelines" var="siteLayout" />
			<li><a href="guidelines" class="waves-effect"><i
					class="material-icons">assignment</i>Planning Guidelines</a></li>
					
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
	<!-- End of ROLE_USER Nav -->
	

	<!-- Body -->

	<div class="container">
	
		<h4 style="text-align: center">Event Details</h4>
    <div class="container">
    	<div class="row">
			<div class="col s12">
			<div class="card-panel">
			<div class="card-content">
				<c:forEach var="event" items="${event }">
				<p>Event Name: ${event.eventName }</p>
				<p>Start Date: ${event.eStartDate }</p>
				<p>Start Time: ${event.eStartTime }</p>
				<p>End Date: ${event.eEndDate }</p>
				<p>End Time: ${event.eEndTime }</p>
				<p>Setup Date: ${event.eSetupDate }</p>
				<p>Setup Time: ${event.eSetupTime }</p>
				<p>Clean up Date: ${event.eCleanupDate }</p>
				<p>Clean up Time: ${event.eCleanupTime }</p>
				
				</div>
			</div>
			</div>
			

		</div>
		<div class="row">
			<div class="col s12">
				<p>If you would like to modify the event details please contact the Event Services Team</p>
			</div>
		</div>
		<div class="row">
			<div class="col s6">
				  <!-- <a id="btnBack" class="waves-effect waves-light btn-large" style="display: block"
					href="" >Back</a>  -->
			</div>  
			<div class="col s6">
				<a id="btnContinue"class="waves-effect waves-light btn-large" style="display: block"   href="testEvent" > Plan Your Event</a>
			</div>
		</div>
		</c:forEach>
		<c:url value="form" var="addUrl" />
    
    </div>
    </div>
    <!-- <script src='https://cdn.jsdelivr.net/sweetalert2/6.1.1/sweetalert2.min.css'></script>
<script src='https://cdn.jsdelivr.net/sweetalert2/6.1.1/sweetalert2.min.js'></script>
    <script  src="scripts/summary.js"></script> -->
</body>
</html>