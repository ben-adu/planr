<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Display accounts</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
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
<c:url value="/scripts/scriptJSON.js" var="scriptUrl" />
<script src="${scriptUrl}"></script>

<script>
	(function($) {
		$(function() {

			$('.button-collapse').sideNav();

		}); // end of document ready
	})(jQuery); // end of jQuery name space
</script>

<script>
$(document).ready(function() {
	 $( "#submit1" ).click(function() {
		  
		 $("#submitted").hide();
		 
		});
	
});
	  
</script>

<style>
.collapsible li.active i {
	-ms-transform: rotate(180deg); /* IE 9 */
	-webkit-transform: rotate(180deg); /* Chrome, Safari, Opera */
	transform: rotate(180deg);
}

.container {
	margin: 0 auto;
	max-width: 1280px;
	width: 90%;
}

@media only screen and (min-width: 601px) .container {
	width
	
	
	
	
	:
	
	
	 
	
	
	85%;
}

@media only screen and (min-width: 993px) .container {
	width
	
	
	
	
	:
	
	
	 
	
	
	70%;
}
</style>
</head>
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
					<a href="#!name"><span class="white-text name">${pageContext.request.userPrincipal.name}</span></a> <a
						href="#!email"><span class="white-text email">ben@mail.com</span></a>
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

	<!-- body -->
	<div class="container">
		<h5 style="text-align: center">Manage Site Layouts</h5>
		<div class="row">
		
		<div class="col s12 m4" id="submitted">
          <div class="card white darken-1">
            <div class="card-image ">
              <img src="images/card_backdrop.jpg" height="250" width="250">
              <span class="card-title">Saved Layout</span>
            </div>
            <div class="card-action">
              <a href="#">Resume Layout</a>
              <a href="#" id="submit1">Submit Layout</a>
            </div>
          </div>
        </div>
        
        <!-- 
			<div class="col s12 m5">
				<div class="card-panel teal">
					<span class="white-text">MuslimFest 2016 </span>
					
				</div>
			</div>
			<div class="col s12 m5">
				<div class="card-panel teal">
					<span class="white-text">MuslimFest 2017 </span>
					
				</div> -->
			</div>
		</div>


	</div>
</body>
</html>