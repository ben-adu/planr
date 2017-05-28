<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="directoryApp">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.min.js"></script>
<script src="scripts/inventory.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/js/materialize.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<script src="scripts/sweetalert.min.js"></script>


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

<link rel="stylesheet" type="text/css" href="css/sweetalert.css">
<link rel="stylesheet" href="css/style.css">
<title>Inventory</title>
</head>
<body ng-controller="directoryController">
	<!-- Preloader -->
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
		<c:url value="/logout" var="logOut" />
		<li><a href="${logOut}" class="waves-effect"><i
				class="material-icons">perm_identity</i>Log out</a></li>
	</ul>
	<a href="#" data-activates="slide-out"
		class="button-collapse show-on-large"><i class="material-icons">menu</i></a>
	<a href="secure" class="brand-logo center"><img
		src="images/mcs.png" height="80"></a> </nav>

	<div class="container">


		<p>Type a letter in the input field:</p>
		<!--  
		<p>
			<input type="text" ng-model="search">
		</p>
		-->
		<form>
			<div class="input-field">
				<input id="search" type="search" required ng-model="search">
				<label class="label-icon" for="search"><i
					class="material-icons">search</i></label> <i class="material-icons">close</i>
			</div>
		</form>
		<table>
			<thead>
				<tr>
					<th>Name</th>
					<th>Quantity</th>

				</tr>
			</thead>

			<tr ng-repeat="item in list | filter:search">
				<td>{{item.name}}</td>
				<td>{{item.quantity}}</td>

			</tr>

		</table>


		<form ng-submit="addInventory()">
			<input type="text" placeholder="Equpment" ng-model="name"> <input
				type="number" placeholder="Quantity" ng-model="quantity"> <input
				type="submit" value="Submit" class="waves-effect waves-light btn" />
		</form>

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