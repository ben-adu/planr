<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
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
<script src="scripts/intro.js"></script>
<link rel="stylesheet" type="text/css" href="css/sweetalert.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/introjs.css">
<link rel="stylesheet" type="text/css" href="css/introjs-modern.css">
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

	<!-- ROLE_ADMIN NAV -->
	<sec:authorize access="hasRole('ROLE_ADMIN')">
		<nav class="default" role="navigation">
		<ul id="slide-out" class="side-nav" >
			<li><div class="userView">
					<div class="background">
						<img src="images/lake.jpg">
					</div>
					<a href="#!user"><img class="circle" src="images/ben.jpg"></a>
					<a href="#!name"><span class="white-text name">${pageContext.request.userPrincipal.name}</span></a> <a
						href="#!email"><span class="white-text email">ben@mail.com</span></a>
				</div></li>
					
			<c:url value="eventDetails" var="siteLayout" />
			<li><a href="eventDetails" class="waves-effect"><i
					class="material-icons">map</i>Create New Event</a></li>
					
			<c:url value="calendar" var="siteLayout" />
			<li><a href="calendar" class="waves-effect"><i
					class="material-icons">event</i>Calendar</a></li>
					
			<c:url value="clientManagement" var="client" />
			<li><a href="clientManagement" class="waves-effect"><i
					class="material-icons">perm_identity</i>Client Management</a></li>
			
			<c:url value="inventoryManagement" var="inventory" />
			<li><a href="inventoryManagement" class="waves-effect"><i
					class="material-icons">assessment</i>Inventory</a></li>
			
			<c:url value="secure" var="client" />
			<li><a href="secure" class="waves-effect"><i
					class="material-icons">arrow_back</i>Back to Main Menu</a></li>
					
			<c:url value="/logout" var="logout" />
			<li><a href="${logout}" class="waves-effect"><i
					class="material-icons">perm_identity</i>Logout</a></li>
		</ul>
		<a href="#" data-activates="slide-out"
			class="button-collapse show-on-large"><i class="material-icons">menu</i></a>
		<a href="secure" class="brand-logo center"><img
			src="images/mcs.png" height="80"></a> </nav>
	</sec:authorize>
	<!--  END OF NAV -->

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
			class="button-collapse show-on-large" data-step="1" data-intro="Click to open Navigation Pane"><i class="material-icons">menu</i></a>
		<a href="secure" class="brand-logo center"><img
			src="images/mcs.png" height="80"></a> </nav>
	</sec:authorize>
	<!-- End of ROLE_USER Nav -->

<div class="fixed-action-btn">
    <a class="btn-floating btn-large red" href="javascript:void(0)" onclick="javascript:introJs().start();">
      <i class="large material-icons">info_outline</i>
    </a>
  </div>


	<!-- Body -->

	<div class="container"><!-- 
		<div class="row">
					<a href="javascript:void(0)" onclick="javascript:introJs().start();" class="page-scroll btn btn-xl">Start</a>
		</div> -->
		<!-- View Employees See -->
		<sec:authorize access="hasRole('ROLE_ADMIN')">
			<h4>Welcome ${pageContext.request.userPrincipal.name}</h4>
			<BR>
			<div class="row">
				
				<div class="col s6">
							<a href="eventDetails">
								<div class="card hoverable teal">
									<div class="card-content white-text ">
									<i class="material-icons medium left">map</i>
										<h4 class="center-align">Create New Event</h4>
									</div>
								</div>
							</a>
					</div>
					
					<div class="col s6">
							<a href="calendar">
								<div class="card hoverable teal">
									<div class="card-content white-text ">
									<i class="material-icons medium left">event</i>
										<h4 class="center-align">Calendar</h4>
									</div>
								</div>
							</a>
					</div>
				
			</div>
			
			<div class="row">
			
					<div class="col s6">
						<a href="clientManagement">
							<div class="card hoverable teal">
								<div class="card-content white-text ">
								<i class="material-icons medium left">perm_identity</i>
									<h4 class="center-align">Client Management</h4>
								</div>
							</div>
						</a>
				</div>
				
				<div class="col s6">
						<a href="inventoryManagement">
							<div class="card hoverable teal">
								<div class="card-content white-text ">
								<i class="material-icons medium left">assessment</i>
									<h4 class="center-align">Inventory</h4>
								</div>
							</div>
						</a>
				</div>
				
			</div>
			
		</sec:authorize>

		<!-- ROLE_USER's view -->
		<sec:authorize access="hasRole('ROLE_USER')">
			<h4>Welcome ${pageContext.request.userPrincipal.name}</h4>
			<BR>
			<div class="row">
				<div class="col s6" data-step="2" data-intro="Click here to Plan a new Event">
							<a href="eventSummary">
								<div class="card hoverable teal">
									<div class="card-content white-text ">
									<i class="material-icons medium left">map</i>
										<h4 class="center-align">Plan Event</h4>
									</div>
								</div>
							</a>
						</div>

						<div class="col s6" data-step="3" data-intro="Click here to Manage Layouts">
							<a href="manageLayouts">
								<div class="card hoverable teal">
									<div class="card-content white-text ">
									<i class="material-icons medium left">devices_other</i>
										<h4 class="center-align">Manage Layouts</h4>
									</div>
								</div>
							</a>
						</div>
						
			</div>
					
			<div class="row">
						<div class="col s6" data-step="4" data-intro="Click here to View Electrical Map">
							<a href="electrical">
								<div class="card hoverable teal">
									<div class="card-content white-text ">
									<i class="material-icons medium left">business</i>
										<h4 class="center-align">View Electrical Map</h4>
									</div>
								</div>
							</a>
						</div>
						
						<div class="col s6" data-step="5" data-intro="Click here to View Planning Guidelines">
							<a href="guidelines">
								<div class="card hoverable teal">
									<div class="card-content white-text ">
									<i class="material-icons medium left">assignment</i>
										<h4 class="center-align">Planning Guidelines</h4>
									</div>
								</div>
							</a>
						</div>
			</div>
		</sec:authorize>
	</div>



</body>
</html>