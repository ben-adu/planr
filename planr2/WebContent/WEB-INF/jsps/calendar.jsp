<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />
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
	


<script src="scripts/dhtmlxscheduler.js" type="text/javascript" charset="utf-8"></script>
<script src="scripts/dhtmlxscheduler_serialize.js" type="text/javascript" charset="utf-8"></script>
<link rel="stylesheet" href="css/dhtmlxscheduler.css" type="text/css" charset="utf-8">


<style type="text/css" >
html, body{
	margin:0px;
	padding:0px;
	height:100%;
	overflow:hidden;
}	
.dhx_cal_navline input{
	width:80px;
	position:absolute;
	top:1px;
	font-family:Tahoma;
	font-weight:8pt;
}
</style>


<script type="text/javascript" charset="utf-8">
function init() {
	scheduler.config.xml_date="%Y-%m-%d %H:%i";
	scheduler.config.prevent_cache = true;
	scheduler.xy.margin_top=30;
	
	scheduler.init('scheduler_here',new Date(2018,0,20),"month");
	//scheduler.parse("data.json","json");
	scheduler.load("scripts/data.json","json");
	
}

function show() {
	alert(scheduler.toJSON());
}



function save() {
	var json_string = scheduler.toJSON(); //json string
//     var fs = require("fs");
//     fs.writeFile("data.json", JSON.stringify(json_string), (err) => {
// if (err) {
// console.error(err);
// return;
// };
// console.log("File has been created");
// });
	
	
       var jsonfile={json:JSON.stringify(scheduler.getEvents)};
       var token = $("meta[name='_csrf']").attr("content"); 
	   var header = $("meta[name='_csrf_header']").attr("content");
$.ajax({
    type: 'POST',
    url: "https://localhost:8080/planr/saveCalendar", 
    data: jsonfile,
    cache:false,
    dataType: 'json'
});
console.log("hello");
}


function download() {
	var form = document.forms[0];
	form.action = "json_download.php";
	form.elements.data.value = scheduler.toJSON();
	form.submit();
}
</script>

<body onload="init();">
<div style='height:20px; padding:5px 10px;'>
	<input type="button" name="download" value="Download" onclick="download()" style="right:500px;" />
	<input type="button" name="show" value="Show" onclick="show()" style="right:400px;" />
	<input type="button" name="save" value="Save" onclick="save()" style="right:300px;" />
	<input type="hidden" value="<% out.println("scriptlet working in js method"); %>" id="chatWindowURL"/>
</div>
<form action="json_writer.php" method="post" target="hidden_frame" accept-charset="utf-8">
	<input type="hidden" name="data" value="" id="data">
</form>
<iframe src='about:blank' frameborder="0" style="width:0px; height:0px;" id="hidden_frame" name="hidden_frame"></iframe>
<div id="scheduler_here" class="dhx_cal_container" style='width:100%; height:100%;'>
	<div class="dhx_cal_navline">
		<div class="dhx_cal_prev_button">&nbsp;</div>
		<div class="dhx_cal_next_button">&nbsp;</div>
		<div class="dhx_cal_today_button"></div>
		<div class="dhx_cal_date"></div>
		<div class="dhx_cal_tab" name="day_tab" style="right:204px;"></div>
		<div class="dhx_cal_tab" name="week_tab" style="right:140px;"></div>
		<div class="dhx_cal_tab" name="month_tab" style="right:76px;"></div>
	</div>
	<div class="dhx_cal_header">
	</div>
	<div class="dhx_cal_data">
	</div>		
</div>
</body>
</html>