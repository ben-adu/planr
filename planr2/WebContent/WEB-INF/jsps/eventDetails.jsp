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
<title>Event Details</title>

<script>
	(function($) {
		$(function() {

			$('.button-collapse').sideNav();

		}); // end of document ready
	})(jQuery); // end of jQuery name space
</script>
<script>
$(document).ready(function() {
	  $('ul.tabs').tabs();
	  $("#btnContinue").click(function() {
	    $('ul.tabs').tabs('select_tab', 'test2');
	  });
	});
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
		<c:url value="/secure" var="secure" />
		<li><a href="${secure}" class="waves-effect"><i
				class="material-icons">arrow_back</i>Back to Main Menu</a></li>
		<li><a href="/planr/logout" class="waves-effect"><i
				class="material-icons">perm_identity</i>Log out</a></li>
	</ul>
	<a href="#" data-activates="slide-out"
		class="button-collapse show-on-large"><i class="material-icons">menu</i></a>
	<a href="secure" class="brand-logo center"><img
		src="images/mcs.png" height="80"></a> </nav>
	<!--  END OF NAV -->
	

	<!-- Body -->

	<div class="container">
	
		<h4 style="text-align: center">Event Details</h4>
		<div class="row">
    <div class="col s12">
      <ul class="tabs">
        <li class="tab col s3"><a class="active" href="#test1">Event Info</a></li>
        <li class="tab col s3"><a  href="#test2">Setup Date</a></li>
        <li class="tab col s3"><a href="#test3">Inventory</a></li>
        <li class="tab col s3"><a href="#test4">Test 4</a></li>
      </ul>
    </div>
    <div id="test1" class="col s12">
    <div class="container">
    	<div class="row">
			<div class="col s6">
				Event Name: MuslimFest </br>
				Event Type: Large</br>
				Start Date: October 10, 2017. </br>
				End Date: October 10, 2017.</br>
				Start Time: 3:00pm</br>
				End Time: 12:00pm</br>
			</div>
			

		</div>
		<div class="row">
			<div class="col s12">
				<p>If you would like to modify the event details please contact the Event Services Team</p>
			</div>
		</div>
		<div class="row">
			<div class="col s6">
				<a id="btnContinue" class="waves-effect waves-light btn-large" style="display: block"
					href="guidelines" >Back</a>
			</div>
			<div class="col s6">
				<a class="waves-effect waves-light btn-large" style="display: block"
					href="#test2">Next</a>
			</div>
		</div>
    
    </div>
    </div>
    <div id="test2" class="col s12">
    <!-- Set up dates -->
    <div class="container">
    	<div class="row">
			<div class="col s6">
				Event Name: MuslimFest </br>
				Event Type: Large</br>
				Start Date: October 10, 2017. </br>
				End Date: October 10, 2017.</br>
				Start Time: 3:00pm</br>
				End Time: 12:00pm</br>
			</div>
			

		</div>
		<div class="row">
			<div class="col s12">
				<p>If you would like to modify the event details please contact the Event Services Team</p>
			</div>
		</div>
		</div>
    </div>
    <div id="test3" class="col s12">Test 3</div>
    <div id="test4" class="col s12">Test 4</div>
  </div>
	

	</div>
	

</body>
</html>