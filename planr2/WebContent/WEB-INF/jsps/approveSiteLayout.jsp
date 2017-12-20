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
	document.addEventListener("DOMContentLoaded", function() {
		$('.preloader-background').delay(1700).fadeOut('slow');

		$('.preloader-wrapper').delay(1700).fadeOut();
	});
</script>
<script>
$(document).ready(function() {
	 $( "#button1" ).click(function() {
		  
		 $("#submitted").hide();
		 
		});
	
});
	  
</script>
</head>
<body>

	<!-- ROLE_ADMIN NAV -->
	<sec:authorize access="hasRole('ROLE_ADMIN')">
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
	</sec:authorize>
	<!--  END OF NAV -->




	<!-- Body -->

<div class="container">
		<h5 style="text-align: center">Approve Site Layouts</h5>
		<div class="row">
		
		<div class="col s12 m6" id="submitted">
          <div class="card blue-grey darken-1">
            <div class="card-image ">
              <img src="images/card_backdrop.jpg" height="250" width="250">
              <span class="card-title">Canada Day</span>
            </div>
            <div class="card-action">
              &nbsp&nbsp&nbsp
              <a href="reviewLayout" style="display: inline">Review</a>
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              <a href="#" id="button1"style="display: inline">Approve</a>
              &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
              <a href="#" id="button2"style="display: inline">Reject</a>
            </div>
          </div>
        </div>
        
			</div>
		</div>
		



</body>
</html>