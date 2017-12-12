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
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/js/materialize.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
	
	<link rel="stylesheet"
	href="https://bootswatch.com/3/readable/bootstrap.min.css">


<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.13.0/moment.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
<style type="text/css">/* Chart.js */
@-webkit-keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}@keyframes chartjs-render-animation{from{opacity:0.99}to{opacity:1}}.chartjs-render-monitor{-webkit-animation:chartjs-render-animation 0.001s;animation:chartjs-render-animation 0.001s;}</style>
<script src="http://www.chartjs.org/samples/latest/utils.js"></script>
<style>
    canvas {
        -moz-user-select: none;
        -webkit-user-select: none;
        -ms-user-select: none;
    }
	</style>


<script src="scripts/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/sweetalert.css">
<link rel="stylesheet" href="css/style.css">
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

	<!-- ROLE_USER NAV -->
	<sec:authorize access="hasRole('ROLE_USER')">
		<nav class="default" role="navigation">
		<ul id="slide-out" class="side-nav">
			<li><div class="userView">
					<div class="background">
						<img src="images/lake.jpg">
					</div>
					<a href="#!user"><img class="circle" src="images/ben.jpg"></a>
					<a href="#!name"><span class="white-text name">ANKIT SHAH</span></a> <a
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
	<!-- End of ROLE_USER Nav -->




	<!-- Body -->
	
	
	<script type="text/javascript" charset="utf-8">
	function newDate(days) {
		  return moment().add(days, 'd');
		}

		var config = {
		  type: 'line',
		  data: {
		    labels: [newDate(-4), newDate(-3), newDate(2), newDate(3), newDate(4), newDate(5), newDate(6)],
		    datasets: [{
		      label: "My First dataset",
		      data: [1, 3, 4, 2, 1, 4, 2],
		    }]
		  },
		  options: {
		    scales: {
		      xAxes: [{
		        type: 'time',
		        time: {
		          displayFormats: {
		          	'millisecond': 'MMM DD',
		            'second': 'MMM DD',
		            'minute': 'MMM DD',
		            'hour': 'MMM DD',
		            'day': 'MMM DD',
		            'week': 'MMM DD',
		            'month': 'MMM DD',
		            'quarter': 'MMM DD',
		            'year': 'MMM DD',
		          }
		        }
		      }],
		    },
		  }
		};

		var ctx = document.getElementById("myChart").getContext("2d");
		new Chart(ctx, config);

	</script>
	
	<canvas id="myChart"></canvas>

</html>