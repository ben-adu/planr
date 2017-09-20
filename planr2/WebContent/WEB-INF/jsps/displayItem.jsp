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
		<c:url value="/inventoryManagement" var="inventoryM" />
		<li><a href="${ inventoryM}" class="waves-effect"><i
				class="material-icons">devices_other</i>Inventory management</a></li>
		<c:url value="#" var="siteLayout" />
		<li><a href="#" class="waves-effect"><i
				class="material-icons">map</i>Approved Site Layouts</a></li>
		<c:url value="/inventoryManagement" var="client" />
		<li><a href="${client}" class="waves-effect"><i
				class="material-icons">arrow_back</i>Back to Main Menu</a></li>
		<li><a href="/planr/logout" class="waves-effect"><i
				class="material-icons">perm_identity</i>Log out</a></li>
	</ul>
	<a href="#" data-activates="slide-out"
		class="button-collapse show-on-large"><i class="material-icons">menu</i></a>
	<a href="secure" class="brand-logo center"><img
		src="images/mcs.png" height="80"></a> </nav>
	<!--  END OF NAV -->

	<!-- body -->
	<div class="container">
		<h5>Inventory</h5>

		<ul class="collapsible popout" data-collapsible="accordion">
			<c:forEach var="inventory" items="${inventory}">
				<li>
					<div class="collapsible-header">
						<i class="material-icons">arrow_drop_down</i>${inventory.name }</div>
					<div class="collapsible-body">
						<p>Manufacturer: ${inventory.manufacturer }</p>
						<p>Quantity: ${inventory.quantity }</p>
						<p>Price(each):$ ${inventory.price }</p>
						<p>Date Added: ${inventory.date }</p>
						<p>Description: ${inventory.description }</p>
						<div class="row">
							<div class="col s6">
								<a href="deleteItem/${inventory.id }"
									class="waves-effect waves-light btn ">Delete</a>
							</div>
							<div class="col s6">
								<a href="editItem/${inventory.id }"
									class="waves-effect waves-light btn ">Update</a>
							</div>
						</div>
					</div>
				</li>


			</c:forEach>
			<c:url value="/form" var="addUrl" />
		</ul>

		<!--  
		<input type="text" id="myInput" onkeyup="myFunction()"
			placeholder="Search for names.." title="Type in a name">
		<div = "colsp12">
			<table class="responsive-table centered striped bordered" id="myTable">
				<!-- here should go some titles... 
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Manufacturer</th>
					<th>Total Quantity</th>
					<th>Price(each)</th>
					<th>Date Added</th>
					<th>Description</th>
					<th>Action</th>
				</tr>
				<c:forEach var="inventory" items="${inventory}">
					<tr>
						<td><c:out value="${inventory.id}" /></td>
						<td><c:out value="${inventory.name}" /></td>
						<td><c:out value="${inventory.manufacturer}" /></td>
						<td><c:out value="${inventory.quantity}" /></td>
						<td><c:out value="${inventory.price}" /></td>
						<td><c:out value="${inventory.date}" /></td>
						<td><c:out value="${inventory.description}" /></td>
						<td><a class="waves-effect waves-light btn"
							href="deleteItem/${inventory.id }"><i
								class="material-icons left">delete</i></a></td>
						<td><a class="waves-effect waves-light btn"
							href="EditItem/${inventory.id }"><i
								class="material-icons left">edit</i></a></td>
					</tr>
				</c:forEach>
			</table>
		</div>
		<script>
			function myFunction() {
				var input, filter, table, tr, td, i;
				input = document.getElementById("myInput");
				filter = input.value.toUpperCase();
				table = document.getElementById("myTable");
				tr = table.getElementsByTagName("tr");
				for (i = 0; i < tr.length; i++) {
					td = tr[i].getElementsByTagName("td")[0];
					if (td) {
						if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
							tr[i].style.display = "";
						} else {
							tr[i].style.display = "none";
						}
					}
				}
			}
		</script>
		-->


		<!-- Fab 
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
		-->

	</div>


</body>
</html>