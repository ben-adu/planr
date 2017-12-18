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
				<a href="#!name"><span class="white-text name">${pageContext.request.userPrincipal.name}</span></a> <a
					href="#!email"><span class="white-text email">ben@mail.com</span></a>
			</div></li>
		<c:url value="clientManagement" var="client" />
		<li><a href="${client }" class="waves-effect"><i
				class="material-icons">perm_identity</i>Client Management</a></li>
		<c:url value="clientManagement" var="client" />
		<li><a href="#" class="waves-effect"><i
				class="material-icons">business</i>Generate Reports</a></li>
		<c:url value="inventoryManagement" var="inventory" />
		<li><a href="${ inventory}" class="waves-effect"><i
				class="material-icons">devices_other</i>Inventory management</a></li>
		<c:url value="#" var="siteLayout" />
		<li><a href="#" class="waves-effect"><i
				class="material-icons">map</i>Approved Site Layouts</a></li>
		<c:url value="clientManagement" var="client" />
		<li><a href="${client}" class="waves-effect"><i
				class="material-icons">arrow_back</i>Back to Main Menu</a></li>
		<li><a href="planr/logout" class="waves-effect"><i
				class="material-icons">perm_identity</i>Log out</a></li>
	</ul>
	<a href="#" data-activates="slide-out"
		class="button-collapse show-on-large"><i class="material-icons">menu</i></a>
	<a href="secure" class="brand-logo center"><img
		src="images/mcs.png" height="80"></a> </nav>
	<!--  END OF NAV -->


<!-- BODY -->
	<div class="container">
	<ul class="collection">
	<c:forEach var="customer" items="${customerList}">
	 <li class="collection-item avatar">
      <img src="images/ben.jpg" alt="" class="circle">
      <span class="title">${customer.firstName} ${customer.lastName}</span>
      <p>${customer.company} <br>
         ${customer.eventName}<br>
         ${customer.address}<br>
         <a href="delete/${customer.id }">Delete Customer</a><br>
		<a href="edit/${customer.id }">Update Customer Info</a><br>
         <br>
      </p>
      <a href="#!" class="secondary-content"><i class="material-icons">grade</i></a>
    </li>
	
		
	</c:forEach>
	<c:url value="form" var="addUrl" />
	</ul>
	
	<!-- FAB -->
	<div class="fixed-action-btn">
    <a class="btn-floating btn-large red">
      <i class="large material-icons">mode_edit</i>
    </a>
    <ul>
      <li><a class="btn-floating red" href="form"><i class="material-icons">account_circle</i></a></li>
      <li><a class="btn-floating blue" href="inventory"><i class="material-icons">build</i></a></li>
       <li><a class="btn-floating blue" href="display"><i class="material-icons">supervisor_account</i></a></li>
    </ul>
  </div>

	</div>


</body>
</html>