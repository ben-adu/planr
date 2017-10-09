<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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

<script src="../scripts/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="../css/sweetalert.css">
<link rel="stylesheet" href="../css/style.css">
<c:url value="../scripts/scriptJSON.js" var="scriptUrl" />
<script src="${scriptUrl}"></script>
<title>Insert title here</title>
</head>
<body>
<!-- NAV -->
	<nav class="default" role="navigation">
	<ul id="slide-out" class="side-nav">
		<li><div class="userView">
				<div class="background">
					<img src="../images/lake.jpg">
				</div>
				<a href="#!user"><img class="circle" src="../images/ben.jpg"></a>
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
		<c:url value="/clientManagement" var="client" />
		<li><a href="${client}" class="waves-effect"><i
				class="material-icons">arrow_back</i>Back to Main Menu</a></li>
		<li><a href="${logOut}" class="waves-effect"><i
				class="material-icons">perm_identity</i>Log out</a></li>
	</ul>
	<a href="#" data-activates="slide-out"
		class="button-collapse show-on-large"><i class="material-icons">menu</i></a>
	<a href="/planr/secure" class="brand-logo center"><img
		src="../images/mcs.png" height="80"></a> </nav>
	<!--  END OF NAV -->

	<div class="container"><br>
		<c:url value="/modify/${customer.id }" var="url" />
		<form:form commandName="customer" method="post" action="${url}">
		First Name: <form:input path="firstName" value="${customer.firstName}" />
			<br />
		Last Name: <form:input path="lastName" value="${customer.lastName}" />
			<br />
		Company: <form:input path="company" value="${customer.company}" />
			<br />
		
		Name of event: <form:input path="eventName"
				value="${customer.eventName}" />
			<br />
		
		Address: <form:input path="address" value="${customer.address}" />
			<br />
			<br />
			<input type="submit" value="Save Customer" />
		</form:form>

		<!-- Fab -->
		<div class="fixed-action-btn">
			<a class="btn-floating btn-large red"> <i
				class="large material-icons">mode_edit</i>
			</a>
			<ul>
				<li><a class="btn-floating red" href="form"><i
						class="material-icons">account_circle</i></a></li>
				<li><a class="btn-floating blue" href="inventory"><i
						class="material-icons">build</i></a></li>
				<li><a class="btn-floating blue" href="display"><i
						class="material-icons">supervisor_account</i></a></li>
			</ul>
		</div>

	</div>

</body>
</html>