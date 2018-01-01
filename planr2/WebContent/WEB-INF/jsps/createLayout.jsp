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
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/js/materialize.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/fabric.js/1.7.20/fabric.js"></script>
<script src="scripts/sweetalert.min.js"></script>
<script src="scripts/intro.js"></script>
<link rel="stylesheet" type="text/css" href="css/sweetalert.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet" type="text/css" href="css/index.css">
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
$(document).ready(function(){
    $('.tooltipped').tooltip({delay: 50});
  });
</script>

<script>
	document.addEventListener("DOMContentLoaded", function() {
		$('.preloader-background').delay(1700).fadeOut('slow');

		$('.preloader-wrapper').delay(1700).fadeOut();
	});
</script>

<script> /* to toggle backdrops  */

$(document).ready(function(){
	  $( "#header1" ).click(function() {
		  
			  var clicks1 = $("#header1").data('clicks1');
			  if (clicks1) {
				  changeView(1);
			  } else {
				  changeView(10);
			  }
			  $("#header1").data("clicks1", !clicks1);
			});
		  
	  $( "#header2" ).click(function() {
		  
		  var clicks2 = $(this).data('clicks2');
		  if (clicks2) {
			  changeView(1);
		  } else {
			  changeView(9);
		  }
		  $(this).data("clicks2", !clicks2);
		});
	  
 	  $( "#header3" ).click(function() {
		  
		  var clicks3 = $(this).data('clicks3');
		  if (clicks3) {
			  changeView(1);
		  } else {
			  changeView(16);
		  }
		  $(this).data("clicks3", !clicks3);
		});
		
 	 $( "#header4" ).click(function() {
		  
		  var clicks4 = $(this).data('clicks4');
		  if (clicks4) {
			  changeView(1);
		  } else {
			  changeView(15);
		  }
		  $(this).data("clicks4", !clicks4);
		});
 	 
 	 $( "#header5" ).click(function() {
		  
		  var clicks5 = $(this).data('clicks5');
		  if (clicks5) {
			  changeView(1);
		  } else {
			  changeView(13);
		  }
		  $(this).data("clicks5", !clicks5);
		});
 	 
	});
</script>

</head>
<body style="background-color:#eeeeee;">
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
					class="material-icons">assessment</i>Inventory management</a></li>
			
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
	<!-- Breadcrumb -->
	
<div class="fixed-action-btn" data-step="5" data-intro="Click this button at any time to re-run the tutorial.">
    <a class="btn-floating btn-large red" href="javascript:void(0)" onclick="javascript:introJs().start();">
      <i class="large material-icons" data-position="left">info_outline</i>
    </a>
  </div>



	<!-- Body -->
	<h4 style="text-align: center">Create Layout</h4>
	<!-- <div class="row"> -->
	
	<!-- <button onclick="changeView(1);">Default</button>
	<button onclick="changeView(2);">Benches</button>
	<button onclick="changeView(3);">Bistro Table/Chair</button>
	<button onclick="changeView(4);">Crowd Control Barricades</button>
	<button onclick="changeView(5);">Display Vehicle Zones</button>
	<button onclick="changeView(6);">Drive & Park Zones</button>
	<button onclick="changeView(7);">Electrical</button>
	<button onclick="changeView(8);">First-Aid Tent</button>
	<button onclick="changeView(9);">Food Vendor w/ Electrical</button>
	<button onclick="changeView(10);">Food Vendor w/o Electrical</button>
	<button onclick="changeView(11);">Inflatables - Bouncy</button>
	<button onclick="changeView(12);">Inflatables - Sport</button>
	<button onclick="changeView(13);">Portables</button>
	<button onclick="changeView(14);">Umbrella</button>
	<button onclick="changeView(15);">Vendors w Electrical</button>
	<button onclick="changeView(16);">Vendors w/o Electrical</button>
	<button onclick="changeView(17);">Waterfilling Station</button>
	<button onclick="changeView(18);">White Picket Fences</button>
	</div> -->
	
	<div class="row">
	
		<div class="col s1">

			<div id="left-panel" data-step="1" data-intro="This is your toolbar.<BR>Choose a tool to use or<BR>hover over a tool to learn what it does.">
				<ul class="list-inline" id="toolbar">
					<li><a
						class="btn-floating btn tooltipped btn-large waves-effect waves-light red" data-position="right" data-delay="50" data-tooltip="Enable Pencil"><i
							class="material-icons" value="start_drawing"
							onclick="onStartDrawing();">edit</i></a></li>

					<li><a
						class="btn-floating btn tooltipped btn-large waves-effect waves-light red"  data-position="right" data-delay="50" data-tooltip="Disable Pencil"
						onclick="onStopDrawing();"> <img
							src="images/pencil-cancel.png" class="stop_drawing"
							id="stop_draw" value="stop drawing" height="20" />
					</a></li>

					<li><a id="btnZoomOut"
						class="btn-floating btn tooltipped btn-large waves-effect waves-light red" data-position="right" data-delay="50" data-tooltip="Zoom Out"><i
							class="material-icons" />zoom_out</i></a></li>

					<li><a id="btnZoomIn"
						class="btn-floating btn tooltipped btn-large waves-effect waves-light red" data-position="right" data-delay="50" data-tooltip="Zoom In"><i
							class="material-icons" />zoom_in</i></a></li>

					<li><a id="btnResetZoom"
						class="btn-floating btn tooltipped btn-large waves-effect waves-light red" data-position="right" data-delay="50" data-tooltip="Reset Zoom"><i
							class="material-icons" />refresh</i></a></li>

					<li><a id="delete"
						class="btn-floating btn tooltipped btn-large waves-effect waves-light red" data-position="right" data-delay="50" data-tooltip="Remove"><i
							class="material-icons">delete</i></a></li>

					<li><a id="copy" onclick="Copy()"
						class="btn-floating btn tooltipped btn-large waves-effect waves-light red" data-position="right" data-delay="50" data-tooltip="Copy"><i
							class="material-icons">content_copy</i></a></li>

					<li><a id="paste" onclick="Paste()"
						class="btn-floating btn tooltipped btn-large waves-effect waves-light red" data-position="right" data-delay="50" data-tooltip="Paste"><i
							class="material-icons">content_paste</i></a>
                                        </li>
					<!--<li><a id="btnPanModeByMouse" class="btn-floating btn-large waves-effect waves-light red"><i class="material-icons"/>pan_tool</i></a></li>-->
					<li><a id="create-text-obj"
						class="btn-floating btn tooltipped btn-large waves-effect waves-light red" data-position="right" data-delay="50" data-tooltip="Add Text"><i
							class="material-icons">text_fields</i></a></li>
				</ul>
			</div>
		</div>

		<div class="col s9">

			<div class="canvas-container" >
				<canvas id="canvas1" style="border:1px solid #ccc" data-step="3" data-intro="This is your canvas.<BR>Tools from the toolbar on the left can be used here and items from the right can be dragged onto the canvas to plan your event"></canvas>
				<canvas id="canvas2" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas3" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas4" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas5" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas6" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas7" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas8" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas9" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas10" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas11" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas12" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas13" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas14" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas15" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas16" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas17" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas18" style="border:1px solid #ccc"></canvas>
			</div>
		</div>

		<div class="col s2">
			<div class="furniture" data-step="2" data-intro="This bar contains draggable items.<BR>Click on a title to expand.<BR>Click again to close<BR>">
				<ul class="collapsible" data-collapsible="accordion" id="image-list">
				
					<li>
					<div class="collapsible-header" id="header1" data-step="6" data-intro="Expand this and drag an item over the canvas to begin">Food vendor w/o electrical</div>
					<div class="collapsible-body">
						<span>
							<img draggable="true" src="images/foodWithoutElectric/10x10.png" height="40">
						<BR>
							<img draggable="true" src="images/foodWithoutElectric/10x15.png" height="40">
						<BR>
							<img draggable="true" src="images/foodWithoutElectric/15x15.png" height="40">
						<BR>
							<img draggable="true" src="images/foodWithoutElectric/10x20.png" height="40">
						<BR>
							<img draggable="true" src="images/foodWithoutElectric/20x20.png" height="40">
						<BR>
							<img draggable="true" src="images/foodWithoutElectric/g20x20.png" height="40">
						<BR>
							<img draggable="true" src="images/foodWithoutElectric/g20x30.png" height="40">
						</span>
					</div>
					</li>
					
					<li>
					<div class="collapsible-header" id="header2">Food vendor with electrical</div>
					<div class="collapsible-body">
						<span>
							<img draggable="true" src="images/foodWithElectric/10x10.png" height="40">
						<BR>
							<img draggable="true" src="images/foodWithElectric/10x15.png" height="40">
						<BR>
							<img draggable="true" src="images/foodWithElectric/15x15.png" height="40">
						<BR>
							<img draggable="true" src="images/foodWithElectric/10x20.png" height="40">
						<BR>
							<img draggable="true" src="images/foodWithElectric/20x20.png" height="40">
						<BR>
							<img draggable="true" src="images/foodWithElectric/g20x20.png" height="40">
						<BR>
							<img draggable="true" src="images/foodWithElectric/g20x30.png" height="40">
						</span>
					</div>
					</li>
					
					<li>
					<div class="collapsible-header" id="header3">Vendor without electrical</div>
					<div class="collapsible-body">
						<span>
							<img draggable="true" src="images/vendorWithoutElectric/10x10.png" height="40">
						<BR>
							<img draggable="true" src="images/vendorWithoutElectric/10x15.png" height="40">
						<BR>
							<img draggable="true" src="images/vendorWithoutElectric/15x15.png" height="40">
						<BR>
							<img draggable="true" src="images/vendorWithoutElectric/10x20.png" height="40">
						<BR>
							<img draggable="true" src="images/vendorWithoutElectric/20x20.png" height="40">
						<BR>
							<img draggable="true" src="images/vendorWithoutElectric/g20x20.png" height="40">
						<BR>
							<img draggable="true" src="images/vendorWithoutElectric/g20x30.png" height="40">
						</span>
					</div>
					</li>
					
					<li>
					<div class="collapsible-header" id="header4">Vendor with electrical</div>
					<div class="collapsible-body">
						<span>
							<img draggable="true" src="images/vendorWithElectric/10x10.png" height="40">
						<BR>
							<img draggable="true" src="images/vendorWithElectric/10x15.png" height="40">
						<BR>
							<img draggable="true" src="images/vendorWithElectric/15x15.png" height="40">
						<BR>
							<img draggable="true" src="images/vendorWithElectric/10x20.png" height="40">
						<BR>
							<img draggable="true" src="images/vendorWithElectric/20x20.png" height="40">
						<BR>
							<img draggable="true" src="images/vendorWithElectric/g20x20.png" height="40">
						<BR>
							<img draggable="true" src="images/vendorWithElectric/g20x30.png" height="40">
						</span>
					</div>
					</li>
					
					<li>
					<div class="collapsible-header" id="header5">Portables</div>
					<div class="collapsible-body">
						<span>
							<img draggable="true" src="images/portables/handwashstation.png" height="40">
						<BR>
							<img draggable="true" src="images/portables/portolet.png" height="40">
						<BR>
							<img draggable="true" src="images/portables/waterStation.png" height="40">
						</span>
					</div>
					</li>
					
					
				</ul>
				<ul>
				<li>
						
					
				</ul>
			</div>
					<a class="Save waves-effect waves-light btn" id="Save" data-step="4" data-intro="This is your Save button.<BR> Use this to frequently save your progress" onclick="Materialize.toast('Layout Saved!!', 4000,'',function(){console.log('Your toast was dismissed')})">
							<i class="material-icons left">save</i>Save</a>
					<BR>
					<BR>	
						<a class="Load waves-effect waves-light btn" id="Load">
							<i class="material-icons left">cloud_download</i>Load</a>
					<BR> 
					 
						<!-- <a class="waves-effect waves-light btn" id="demo" onclick="myFunction()">
							<i class="material-icons left">code</i>JSON.log</a> -->
					
		</div>
	</div>
</body>

<!-- script to default page view on canvas1 (default canvas) -->
<script> 
$(document).ready(function() {
    changeView(1);
});
</script>

<!-- main script to load canvas and create default functions -->
<script> 
	var canvasScale = 1;
	var SCALE_FACTOR = 1.1;
	var zoomMax = 2.3;
	var activeCanvas;
	
	$('select').material_select();

	
	function initCanvas() {

		$('.canvas-container')
				.each(
						function(index) {
							
							
							var canvasContainer = $(this)[0];
							
							var canvas1 = $("canvas", this)[0];
							
							var canvasOne = window._canvas = new fabric.Canvas(canvas1);
							var canvasTwo = window._canvas2 = new fabric.Canvas(canvas2);
							var canvasThree = window._canvas3 = new fabric.Canvas(canvas3);
							var canvasFour = window._canvas4 = new fabric.Canvas(canvas4);
							var canvasFive = window._canvas5 = new fabric.Canvas(canvas5);
							var canvasSix = window._canvas6 = new fabric.Canvas(canvas6);
							var canvasSeven = window._canvas7 = new fabric.Canvas(canvas7);
							var canvasEight = window._canvas8 = new fabric.Canvas(canvas8);
							var canvasNine = window._canvas9 = new fabric.Canvas(canvas9);
							var canvasTen = window._canvas10 = new fabric.Canvas(canvas10);
							var canvasEleven = window._canvas11 = new fabric.Canvas(canvas11);
							var canvasTwelve = window._canvas12 = new fabric.Canvas(canvas12);
							var canvasThirteen = window._canvas13 = new fabric.Canvas(canvas13);
							var canvasFourteen = window._canvas14 = new fabric.Canvas(canvas14);
							var canvasFifteen = window._canvas15 = new fabric.Canvas(canvas15);
							var canvasSixteen = window._canvas16 = new fabric.Canvas(canvas16);
							var canvasSeventeen = window._canvas17 = new fabric.Canvas(canvas17);
							var canvasEighteen = window._canvas18 = new fabric.Canvas(canvas18);
							
							
							var img = new Image();
							img.src = "images/BackgroundImages/backdrop.bmp";
							img.onload = function() {
								canvasOne.setBackgroundImage(img.src,
										canvasOne.renderAll.bind(canvasOne), {
											originX : 'left',
											originY : 'top',
											left : 0,
											top : 0
										});
								var canvasHeight = canvasOne.setHeight(img.height);
								var canvasWidth = canvasOne.setWidth(img.width);
								canvasWidth, canvasHeight;
							};
							
							var img2= new Image();
							img2.src = "images/BackgroundImages/backdrop_benches.bmp";
							img2.onload = function(){
								canvasTwo.setBackgroundImage(img2.src,
										canvasTwo.renderAll.bind(canvasTwo), {
											originX : 'left',
											originY : 'top',
											left : 0,
											top : 0,
											opacity : 0.7
										});
								var canvasHeight2 = canvasTwo.setHeight(img.height);
								var canvasWidth2 = canvasTwo.setWidth(img.width);
								canvasWidth2, canvasHeight2;
							};
							
							var img3= new Image();
							img3.src ="images/BackgroundImages/backdrop_bistroTC.bmp";
							img3.onload = function(){
								canvasThree.setBackgroundImage(img3.src,
										canvasThree.renderAll.bind(canvasThree), {
											originX : 'left',
											originY : 'top',
											left : 0,
											top : 0,
											opacity : 0.7
										});
								var canvasHeight3 = canvasThree.setHeight(img.height);
								var canvasWidth3 = canvasThree.setWidth(img.width);
								canvasWidth3, canvasHeight3;
							};
							
							var img4= new Image();
							img4.src ="images/BackgroundImages/backdrop_crowdControl.bmp";
							img4.onload = function(){
								canvasFour.setBackgroundImage(img4.src,
										canvasFour.renderAll.bind(canvasFour), {
											originX : 'left',
											originY : 'top',
											left : 0,
											top : 0,
											opacity : 0.7
										});
								var canvasHeight4 = canvasFour.setHeight(img.height);
								var canvasWidth4 = canvasFour.setWidth(img.width);
								canvasWidth4, canvasHeight4;
							};
							
							var img5= new Image();
							img5.src ="images/BackgroundImages/backdrop_displayVehicle.bmp";
							img5.onload = function(){
								canvasFive.setBackgroundImage(img5.src,
										canvasFive.renderAll.bind(canvasFive), {
											originX : 'left',
											originY : 'top',
											left : 0,
											top : 0,
											opacity : 0.7
										});
								var canvasHeight5 = canvasFive.setHeight(img.height);
								var canvasWidth5 = canvasFive.setWidth(img.width);
								canvasWidth5, canvasHeight5;
							};
							
							var img6= new Image();
							img6.src ="images/BackgroundImages/backdrop_drivingZones.bmp";
							img6.onload = function(){
								canvasSix.setBackgroundImage(img6.src,
										canvasSix.renderAll.bind(canvasSix), {
											originX : 'left',
											originY : 'top',
											left : 0,
											top : 0,
											opacity : 0.7
										});
								var canvasHeight6 = canvasSix.setHeight(img.height);
								var canvasWidth6 = canvasSix.setWidth(img.width);
								canvasWidth6, canvasHeight6;
							};
							
							var img7= new Image();
							img7.src ="images/BackgroundImages/backdrop_electrical.bmp";
							img7.onload = function(){
								canvasSeven.setBackgroundImage(img7.src,
										canvasSeven.renderAll.bind(canvasSeven), {
											originX : 'left',
											originY : 'top',
											left : 0,
											top : 0,
											opacity : 0.7
										});
								var canvasHeight7 = canvasSeven.setHeight(img.height);
								var canvasWidth7 = canvasSeven.setWidth(img.width);
								canvasWidth7, canvasHeight7;
							};
							
							var img8= new Image();
							img8.src ="images/BackgroundImages/backdrop_firstaid.bmp";
							img8.onload = function(){
								canvasEight.setBackgroundImage(img8.src,
										canvasEight.renderAll.bind(canvasEight), {
											originX : 'left',
											originY : 'top',
											left : 0,
											top : 0,
											opacity : 0.7
										});
								var canvasHeight8 = canvasEight.setHeight(img.height);
								var canvasWidth8 = canvasEight.setWidth(img.width);
								canvasWidth8, canvasHeight8;
							};
							
							var img9= new Image();
							img9.src ="images/BackgroundImages/backdrop_foodwElectrical.bmp";
							img9.onload = function(){
								canvasNine.setBackgroundImage(img9.src,
										canvasNine.renderAll.bind(canvasNine), {
											originX : 'left',
											originY : 'top',
											left : 0,
											top : 0,
											opacity : 0.7
										});
								var canvasHeight9 = canvasNine.setHeight(img.height);
								var canvasWidth9 = canvasNine.setWidth(img.width);
								canvasWidth9, canvasHeight9;
							};
							
							var img10= new Image();
							img10.src ="images/BackgroundImages/backdrop_foodwoElectrical.bmp";
							img10.onload = function(){
								canvasTen.setBackgroundImage(img10.src,
										canvasTen.renderAll.bind(canvasTen), {
											originX : 'left',
											originY : 'top',
											left : 0,
											top : 0,
											opacity : 0.7
										});
								var canvasHeight10 = canvasTen.setHeight(img.height);
								var canvasWidth10 = canvasTen.setWidth(img.width);
								canvasWidth10, canvasHeight10;
							};
							
							var img11= new Image();
							img11.src ="images/BackgroundImages/backdrop_inflatables_Bouncy.bmp";
							img11.onload = function(){
								canvasEleven.setBackgroundImage(img11.src,
										canvasEleven.renderAll.bind(canvasEleven), {
											originX : 'left',
											originY : 'top',
											left : 0,
											top : 0,
											opacity : 0.7
										});
								var canvasHeight11 = canvasEleven.setHeight(img.height);
								var canvasWidth11 = canvasEleven.setWidth(img.width);
								canvasWidth11, canvasHeight11;
							};
							
							var img12= new Image();
							img12.src ="images/BackgroundImages/backdrop_inflatables_Sport.bmp";
							img12.onload = function(){
								canvasTwelve.setBackgroundImage(img12.src,
										canvasTwelve.renderAll.bind(canvasTwelve), {
											originX : 'left',
											originY : 'top',
											left : 0,
											top : 0,
											opacity : 0.7
										});
								var canvasHeight12 = canvasTwelve.setHeight(img.height);
								var canvasWidth12 = canvasTwelve.setWidth(img.width);
								canvasWidth12, canvasHeight12;
							};
							
							var img13= new Image();
							img13.src ="images/BackgroundImages/backdrop_portables.bmp";
							img13.onload = function(){
								canvasThirteen.setBackgroundImage(img13.src,
										canvasThirteen.renderAll.bind(canvasThirteen), {
											originX : 'left',
											originY : 'top',
											left : 0,
											top : 0,
											opacity : 0.7
										});
								var canvasHeight13 = canvasThirteen.setHeight(img.height);
								var canvasWidth13 = canvasThirteen.setWidth(img.width);
								canvasWidth13, canvasHeight13;
							};
							
							var img14= new Image();
							img14.src ="images/BackgroundImages/backdrop_umbrella.bmp";
							img14.onload = function(){
								canvasFourteen.setBackgroundImage(img14.src,
										canvasFourteen.renderAll.bind(canvasFourteen), {
											originX : 'left',
											originY : 'top',
											left : 0,
											top : 0,
											opacity : 0.7
										});
								var canvasHeight14 = canvasFourteen.setHeight(img.height);
								var canvasWidth14 = canvasFourteen.setWidth(img.width);
								canvasWidth14, canvasHeight14;
							};
							
							var img15= new Image();
							img15.src ="images/BackgroundImages/backdrop_vendorsWElectrical.bmp";
							img15.onload = function(){
								canvasFifteen.setBackgroundImage(img15.src,
										canvasFifteen.renderAll.bind(canvasFifteen), {
											originX : 'left',
											originY : 'top',
											left : 0,
											top : 0,
											opacity : 0.7
										});
								var canvasHeight15 = canvasFifteen.setHeight(img.height);
								var canvasWidth15 = canvasFifteen.setWidth(img.width);
								canvasWidth15, canvasHeight15;
							};
							
							var img16= new Image();
							img16.src ="images/BackgroundImages/backdrop_vendorsWoElectrical.bmp";
							img16.onload = function(){
								canvasSixteen.setBackgroundImage(img16.src,
										canvasSixteen.renderAll.bind(canvasSixteen), {
											originX : 'left',
											originY : 'top',
											left : 0,
											top : 0,
											opacity : 0.7
										});
								var canvasHeight16 = canvasSixteen.setHeight(img.height);
								var canvasWidth16 = canvasSixteen.setWidth(img.width);
								canvasWidth16, canvasHeight16;
							};
							
							var img17= new Image();
							img17.src ="images/BackgroundImages/backdrop_waterfilling.bmp";
							img17.onload = function(){
								canvasSeventeen.setBackgroundImage(img17.src,
										canvasSeventeen.renderAll.bind(canvasSeventeen), {
											originX : 'left',
											originY : 'top',
											left : 0,
											top : 0,
											opacity : 0.7
										});
								var canvasHeight17 = canvasSeventeen.setHeight(img.height);
								var canvasWidth17 = canvasSeventeen.setWidth(img.width);
								canvasWidth17, canvasHeight17;
							};
							
							var img18= new Image();
							img18.src ="images/BackgroundImages/backdrop_whitePicket.bmp";
							img18.onload = function(){
								canvasEighteen.setBackgroundImage(img18.src,
										canvasEighteen.renderAll.bind(canvasEighteen), {
											originX : 'left',
											originY : 'top',
											left : 0,
											top : 0,
											opacity : 0.7
										});
								var canvasHeight18 = canvasEighteen.setHeight(img.height);
								var canvasWidth18 = canvasEighteen.setWidth(img.width);
								canvasWidth18, canvasHeight18;
							};
							
							var imageOffsetX, imageOffsetY;
							
							
							function handleDragStart(e) {
								[].forEach.call(images, function(img) {
									img.classList.remove('img_dragging');
								});
								this.classList.add('img_dragging');
								
								var imageOffset = $(this).offset();
								imageOffsetX = e.clientX - imageOffset.left;
								imageOffsetY = e.clientY - imageOffset.top;
								
							}

							function handleDragOver(e) {
								if (e.preventDefault) {
									e.preventDefault();
								}
								e.dataTransfer.dropEffect = 'copy';
								return false;
								console.log('event: ', e);
							}

							function handleDragEnter(e) {
								this.classList.add('over');
								console.log('event: ', e);
							}

							function handleDragLeave(e) {
								this.classList.remove('over');
								console.log('event: ', e);
							}

							function handleDrop(e) {
								e = e || window.event;
								if (e.preventDefault) {
									e.preventDefault();
								}
								if (e.stopPropagation) {
									e.stopPropagation();
								}
								var img = document
										.querySelector('.furniture img.img_dragging');
								console.log('event: ', e);


								if (activeCanvas == canvas1){
									var offset = $(canvas1).offset();
									var y = e.clientY - (offset.top + imageOffsetY);
									var x = e.clientX - (offset.left + imageOffsetX);
								}
								
								if (activeCanvas == canvas2){
									var offset2 = $(canvas2).offset();
									var y = e.clientY - (offset2.top + imageOffsetY);
									var x = e.clientX - (offset2.left + imageOffsetX);
									
								}
								
								if (activeCanvas == canvas3){
									var offset3 = $(canvas3).offset();
									var y = e.clientY - (offset3.top + imageOffsetY);
									var x = e.clientX - (offset3.left + imageOffsetX);
									
								}
								
								if (activeCanvas == canvas4){
									var offset4 = $(canvas4).offset();
									var y = e.clientY - (offset4.top + imageOffsetY);
									var x = e.clientX - (offset4.left + imageOffsetX);
									
								}
								
								if (activeCanvas == canvas5){
									var offset5 = $(canvas5).offset();
									var y = e.clientY - (offset5.top + imageOffsetY);
									var x = e.clientX - (offset5.left + imageOffsetX);
									
								}
								
								if (activeCanvas == canvas6){
									var offset6 = $(canvas6).offset();
									var y = e.clientY - (offset6.top + imageOffsetY);
									var x = e.clientX - (offset6.left + imageOffsetX);
									
								}
								
								if (activeCanvas == canvas7){
									var offset7 = $(canvas7).offset();
									var y = e.clientY - (offset7.top + imageOffsetY);
									var x = e.clientX - (offset7.left + imageOffsetX);
									
								}
		
								if (activeCanvas == canvas8){
									var offset8 = $(canvas8).offset();
									var y = e.clientY - (offset8.top + imageOffsetY);
									var x = e.clientX - (offset8.left + imageOffsetX);
									
								}
								
								if (activeCanvas == canvas9){
									var offset9 = $(canvas9).offset();
									var y = e.clientY - (offset9.top + imageOffsetY);
									var x = e.clientX - (offset9.left + imageOffsetX);
									
								}
								
								if (activeCanvas == canvas10){
									var offset10 = $(canvas10).offset();
									var y = e.clientY - (offset10.top + imageOffsetY);
									var x = e.clientX - (offset10.left + imageOffsetX);
									
								}
								
								if (activeCanvas == canvas11){
									var offset11 = $(canvas11).offset();
									var y = e.clientY - (offset11.top + imageOffsetY);
									var x = e.clientX - (offset11.left + imageOffsetX);
									
								}
								
								if (activeCanvas == canvas12){
									var offset12 = $(canvas12).offset();
									var y = e.clientY - (offset12.top + imageOffsetY);
									var x = e.clientX - (offset12.left + imageOffsetX);
									
								}
								
								if (activeCanvas == canvas13){
									var offset13 = $(canvas13).offset();
									var y = e.clientY - (offset13.top + imageOffsetY);
									var x = e.clientX - (offset13.left + imageOffsetX);
									
								}
								
								if (activeCanvas == canvas14){
									var offset14 = $(canvas14).offset();
									var y = e.clientY - (offset14.top + imageOffsetY);
									var x = e.clientX - (offset14.left + imageOffsetX);
									
								}
								
								if (activeCanvas == canvas15){
									var offset15 = $(canvas15).offset();
									var y = e.clientY - (offset15.top + imageOffsetY);
									var x = e.clientX - (offset15.left + imageOffsetX);
									
								}
								
								if (activeCanvas == canvas16){
									var offset16 = $(canvas16).offset();
									var y = e.clientY - (offset16.top + imageOffsetY);
									var x = e.clientX - (offset16.left + imageOffsetX);
									
								}
								
								if (activeCanvas == canvas17){
									var offset17 = $(canvas17).offset();
									var y = e.clientY - (offset17.top + imageOffsetY);
									var x = e.clientX - (offset17.left + imageOffsetX);
									
								}
								
								if (activeCanvas == canvas18){
									var offset18 = $(canvas18).offset();
									var y = e.clientY - (offset18.top + imageOffsetY);
									var x = e.clientX - (offset18.left + imageOffsetX);
									
								}
								
								var newImage = new fabric.Image(img, {
									width : img.width,
									height : img.height,
									left : x,
									top : y,
									hasControls : false
								});
								
								canvasOne.add(newImage);
								return false;
							}

							function handleDragEnd(e) {
								[].forEach.call(images, function(img) {
									img.classList.remove('img_dragging');
								});
								console.log('event: ', e);
							}

							var images = document
									.querySelectorAll('.furniture img');
							[].forEach.call(images, function(img) {
								img.addEventListener('dragstart',
										handleDragStart, true);
								img.addEventListener('dragend', handleDragEnd,
										true);
								
							});
							canvasContainer.addEventListener('dragenter',
									handleDragEnter, false);
							canvasContainer.addEventListener('dragover',
									handleDragOver, false);
							canvasContainer.addEventListener('dragleave',
									handleDragLeave, false);
							canvasContainer.addEventListener('drop',
									handleDrop, false);
						});

	}
	initCanvas();
	
 
	var getFabricCanvases = (function() {
		var fabricCanvasCollection;
		return function getCanvases() {
			if (!fabricCanvasCollection) {
				fabricCanvasCollection = [];
				var fabricCanvas = $('.canvas-container canvas');
				fabricCanvas.each(function(index, item) {
					fabricCanvasCollection.push($(item));
				});
			}
			return fabricCanvasCollection;
		}
	})();

	
	function changeView(option) {
	    if (option == 1) {
	        activeCanvas = canvas1;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas1').parent().css('position', 'absolute');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	        $('#canvas11').parent().css('display', 'none');
	        $('#canvas12').parent().css('display', 'none');
	        $('#canvas13').parent().css('display', 'none');
	        $('#canvas14').parent().css('display', 'none');
	        $('#canvas15').parent().css('display', 'none');
	        $('#canvas16').parent().css('display', 'none');
	        $('#canvas17').parent().css('display', 'none');
	        $('#canvas18').parent().css('display', 'none');
			window._canvas.renderAll();
	    }

	    if (option == 2) {
	        activeCanvas = canvas2;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas1').parent().css('position', 'absolute');
	        $('#canvas2').parent().css('display', 'block');
	        $('#canvas2').parent().css('position', 'absolute');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	        $('#canvas11').parent().css('display', 'none');
	        $('#canvas12').parent().css('display', 'none');
	        $('#canvas13').parent().css('display', 'none');
	        $('#canvas14').parent().css('display', 'none');
	        $('#canvas15').parent().css('display', 'none');
	        $('#canvas16').parent().css('display', 'none');
	        $('#canvas17').parent().css('display', 'none');
	        $('#canvas18').parent().css('display', 'none');
	        window._canvas2.renderAll();
	    }
	    
	    if (option == 3) {
	        activeCanvas = canvas3;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas1').parent().css('position', 'absolute');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'block');
	        $('#canvas3').parent().css('position', 'absolute');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	        $('#canvas11').parent().css('display', 'none');
	        $('#canvas12').parent().css('display', 'none');
	        $('#canvas13').parent().css('display', 'none');
	        $('#canvas14').parent().css('display', 'none');
	        $('#canvas15').parent().css('display', 'none');
	        $('#canvas16').parent().css('display', 'none');
	        $('#canvas17').parent().css('display', 'none');
	        $('#canvas18').parent().css('display', 'none');
	        window._canvas3.renderAll();
	    }
	    
	    if (option == 4) {
	        activeCanvas = canvas4;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas1').parent().css('position', 'absolute');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'block');
	        $('#canvas4').parent().css('position', 'absolute');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	        $('#canvas11').parent().css('display', 'none');
	        $('#canvas12').parent().css('display', 'none');
	        $('#canvas13').parent().css('display', 'none');
	        $('#canvas14').parent().css('display', 'none');
	        $('#canvas15').parent().css('display', 'none');
	        $('#canvas16').parent().css('display', 'none');
	        $('#canvas17').parent().css('display', 'none');
	        $('#canvas18').parent().css('display', 'none');
	        window._canvas4.renderAll();
	    }
	    
	    if (option == 5) {
	        activeCanvas = canvas5;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas1').parent().css('position', 'absolute');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'block');
	        $('#canvas5').parent().css('position', 'absolute');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	        $('#canvas11').parent().css('display', 'none');
	        $('#canvas12').parent().css('display', 'none');
	        $('#canvas13').parent().css('display', 'none');
	        $('#canvas14').parent().css('display', 'none');
	        $('#canvas15').parent().css('display', 'none');
	        $('#canvas16').parent().css('display', 'none');
	        $('#canvas17').parent().css('display', 'none');
	        $('#canvas18').parent().css('display', 'none');
	        window._canvas5.renderAll();
	    }
	    
	    if (option == 6) {
	        activeCanvas = canvas6;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas1').parent().css('position', 'absolute');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'block');
	        $('#canvas6').parent().css('position', 'absolute');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	        $('#canvas11').parent().css('display', 'none');
	        $('#canvas12').parent().css('display', 'none');
	        $('#canvas13').parent().css('display', 'none');
	        $('#canvas14').parent().css('display', 'none');
	        $('#canvas15').parent().css('display', 'none');
	        $('#canvas16').parent().css('display', 'none');
	        $('#canvas17').parent().css('display', 'none');
	        $('#canvas18').parent().css('display', 'none');
	        window._canvas6.renderAll();
	    }
	    
	    if (option == 7) {
	        activeCanvas = canvas7;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas1').parent().css('position', 'absolute');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'block');
	        $('#canvas7').parent().css('position', 'absolute');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	        $('#canvas11').parent().css('display', 'none');
	        $('#canvas12').parent().css('display', 'none');
	        $('#canvas13').parent().css('display', 'none');
	        $('#canvas14').parent().css('display', 'none');
	        $('#canvas15').parent().css('display', 'none');
	        $('#canvas16').parent().css('display', 'none');
	        $('#canvas17').parent().css('display', 'none');
	        $('#canvas18').parent().css('display', 'none');
	        window._canvas7.renderAll();
	    }
	    
	    if (option == 8) {
	        activeCanvas = canvas8;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas1').parent().css('position', 'absolute');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'block');
	        $('#canvas8').parent().css('position', 'absolute');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	        $('#canvas11').parent().css('display', 'none');
	        $('#canvas12').parent().css('display', 'none');
	        $('#canvas13').parent().css('display', 'none');
	        $('#canvas14').parent().css('display', 'none');
	        $('#canvas15').parent().css('display', 'none');
	        $('#canvas16').parent().css('display', 'none');
	        $('#canvas17').parent().css('display', 'none');
	        $('#canvas18').parent().css('display', 'none');
	        window._canvas8.renderAll();
	    }
	    
	    if (option == 9) {
	        activeCanvas = canvas9;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas1').parent().css('position', 'absolute');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'block');
	        $('#canvas9').parent().css('position', 'absolute');
	        $('#canvas10').parent().css('display', 'none');
	        $('#canvas11').parent().css('display', 'none');
	        $('#canvas12').parent().css('display', 'none');
	        $('#canvas13').parent().css('display', 'none');
	        $('#canvas14').parent().css('display', 'none');
	        $('#canvas15').parent().css('display', 'none');
	        $('#canvas16').parent().css('display', 'none');
	        $('#canvas17').parent().css('display', 'none');
	        $('#canvas18').parent().css('display', 'none');
	       /*  window._canvas9.renderAll(); */
	    }
	    
	    if (option == 10) {
	        activeCanvas = canvas10;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas1').parent().css('position', 'absolute');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'block');
	        $('#canvas10').parent().css('position', 'absolute');
	        $('#canvas11').parent().css('display', 'none');
	        $('#canvas12').parent().css('display', 'none');
	        $('#canvas13').parent().css('display', 'none');
	        $('#canvas14').parent().css('display', 'none');
	        $('#canvas15').parent().css('display', 'none');
	        $('#canvas16').parent().css('display', 'none');
	        $('#canvas17').parent().css('display', 'none');
	        $('#canvas18').parent().css('display', 'none');
	        window._canvas10.renderAll();
	    }
	    
	    if (option == 11) {
	        activeCanvas = canvas11;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas1').parent().css('position', 'absolute');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	        $('#canvas11').parent().css('display', 'block');
	        $('#canvas11').parent().css('position', 'absolute');
	        $('#canvas12').parent().css('display', 'none');
	        $('#canvas13').parent().css('display', 'none');
	        $('#canvas14').parent().css('display', 'none');
	        $('#canvas15').parent().css('display', 'none');
	        $('#canvas16').parent().css('display', 'none');
	        $('#canvas17').parent().css('display', 'none');
	        $('#canvas18').parent().css('display', 'none');
	        window._canvas11.renderAll();
	    }
	    
	    if (option == 12) {
	        activeCanvas = canvas12;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas1').parent().css('position', 'absolute');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	        $('#canvas11').parent().css('display', 'none');
	        $('#canvas12').parent().css('display', 'block');
	        $('#canvas12').parent().css('position', 'absolute');
	        $('#canvas13').parent().css('display', 'none');
	        $('#canvas14').parent().css('display', 'none');
	        $('#canvas15').parent().css('display', 'none');
	        $('#canvas16').parent().css('display', 'none');
	        $('#canvas17').parent().css('display', 'none');
	        $('#canvas18').parent().css('display', 'none');
	        window._canvas12.renderAll();
	    }
	    
	    if (option == 13) {
	        activeCanvas = canvas13;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas1').parent().css('position', 'absolute');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	        $('#canvas11').parent().css('display', 'none');
	        $('#canvas12').parent().css('display', 'none');
	        $('#canvas13').parent().css('display', 'block');
	        $('#canvas13').parent().css('position', 'absolute');
	        $('#canvas14').parent().css('display', 'none');
	        $('#canvas15').parent().css('display', 'none');
	        $('#canvas16').parent().css('display', 'none');
	        $('#canvas17').parent().css('display', 'none');
	        $('#canvas18').parent().css('display', 'none');
	        window._canvas13.renderAll();
	    }
	    
	    if (option == 14) {
	        activeCanvas = canvas14;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas1').parent().css('position', 'absolute');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	        $('#canvas11').parent().css('display', 'none');
	        $('#canvas12').parent().css('display', 'none');
	        $('#canvas13').parent().css('display', 'none');
	        $('#canvas14').parent().css('display', 'block');
	        $('#canvas14').parent().css('position', 'absolute');
	        $('#canvas15').parent().css('display', 'none');
	        $('#canvas16').parent().css('display', 'none');
	        $('#canvas17').parent().css('display', 'none');
	        $('#canvas18').parent().css('display', 'none');
	        window._canvas14.renderAll();
	    }
	    
	    if (option == 15) {
	        activeCanvas = canvas15;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas1').parent().css('position', 'absolute');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	        $('#canvas11').parent().css('display', 'none');
	        $('#canvas12').parent().css('display', 'none');
	        $('#canvas13').parent().css('display', 'none');
	        $('#canvas14').parent().css('display', 'none');
	        $('#canvas15').parent().css('display', 'block');
	        $('#canvas15').parent().css('position', 'absolute');
	        $('#canvas16').parent().css('display', 'none');
	        $('#canvas17').parent().css('display', 'none');
	        $('#canvas18').parent().css('display', 'none');
	        window._canvas15.renderAll();
	    }
	    
	    if (option == 16) {
	        activeCanvas = canvas16;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas1').parent().css('position', 'absolute');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	        $('#canvas11').parent().css('display', 'none');
	        $('#canvas12').parent().css('display', 'none');
	        $('#canvas13').parent().css('display', 'none');
	        $('#canvas14').parent().css('display', 'none');
	        $('#canvas15').parent().css('display', 'none');
	        $('#canvas16').parent().css('display', 'block');
	        $('#canvas16').parent().css('position', 'absolute');
	        $('#canvas17').parent().css('display', 'none');
	        $('#canvas18').parent().css('display', 'none');
	        window._canvas16.renderAll();
	    }
	    
	    if (option == 17) {
	        activeCanvas = canvas17;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas1').parent().css('position', 'absolute');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	        $('#canvas11').parent().css('display', 'none');
	        $('#canvas12').parent().css('display', 'none');
	        $('#canvas13').parent().css('display', 'none');
	        $('#canvas14').parent().css('display', 'none');
	        $('#canvas15').parent().css('display', 'none');
	        $('#canvas16').parent().css('display', 'none');
	        $('#canvas17').parent().css('display', 'block');
	        $('#canvas17').parent().css('position', 'absolute');
	        $('#canvas18').parent().css('display', 'none');
	        window._canvas17.renderAll();
	    }
	    
	    if (option == 18) {
	        activeCanvas = canvas18;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas1').parent().css('position', 'absolute');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	        $('#canvas11').parent().css('display', 'none');
	        $('#canvas12').parent().css('display', 'none');
	        $('#canvas13').parent().css('display', 'none');
	        $('#canvas14').parent().css('display', 'none');
	        $('#canvas15').parent().css('display', 'none');
	        $('#canvas16').parent().css('display', 'none');
	        $('#canvas17').parent().css('display', 'none');
	        $('#canvas18').parent().css('display', 'block');
	        $('#canvas18').parent().css('position', 'absolute');
	        window._canvas18.renderAll();
	    }
	} 
	
	$('#create-text-obj').on('click', function() {
		create_text_obj();
	});

	var create_text_obj = function() {
		var text_obj = new fabric.IText('Add Text', {
			left : 500,
			top : 225,
			fontSize : 20,
			textAlign : "left",
			fill : "#black",
			lockRotation : true,
			hasRotationPoint : false,
			hasBorders : false
		});

		window._canvas.add(text_obj);
		
	};

	$("#delete").click(function() {
		deleteObjects();
	});

	var onStartDrawing = function() {
		window._canvas.isDrawingMode = true;
	};

	var onStopDrawing = function() {
		window._canvas.isDrawingMode = false;
	};

	
	function deleteObjects() {
		var activeObject = window._canvas.getActiveObject();
		
		if (activeObject) {
			window._canvas.remove(activeObject);
			
		}
	}

	$("#btnZoomIn").click(function() {
		zoomIn();
	});
	// button Zoom Out

	$("#btnZoomOut").click(
			function() {
				zoomOut();

				getFabricCanvases().forEach(
						function(elementValue) {
							var currentTop = Number(elementValue.css("top")
									.replace(/[^\d\.\-]/g, ''));
							var currentLeft = Number(elementValue.css("left")
									.replace(/[^\d\.\-]/g, ''));

							currentTop = zoomCalcYpos(currentTop);
							currentLeft = zoomCalcXpos(currentLeft);

							elementValue.css("top", currentTop);
							elementValue.css("left", currentLeft);
						});

			});

	// button Reset Zoom
	$("#btnResetZoom").click(function() {
		resetZoom();
	});

	function zoomIn() {
		if (window._canvas.getZoom().toFixed(5) > zoomMax) {
			console.log("zoomIn: Error: cannot zoom-in anymore");
			return;
		}

		window._canvas.setZoom(window._canvas.getZoom() * SCALE_FACTOR);
		window._canvas.setHeight(window._canvas.getHeight() * SCALE_FACTOR);
		window._canvas.setWidth(window._canvas.getWidth() * SCALE_FACTOR);
		
		window._canvas.renderAll();
	}

	// Zoom Out
	function zoomOut() {
		if (window._canvas.getZoom().toFixed(5) <= 1) {
			console.log("zoomOut: Error: cannot zoom-out anymore");
			return;
		}

		window._canvas.setZoom(window._canvas.getZoom() / SCALE_FACTOR);
		window._canvas.setHeight(window._canvas.getHeight() / SCALE_FACTOR);
		window._canvas.setWidth(window._canvas.getWidth() / SCALE_FACTOR);
		
		window._canvas.renderAll();
	}

	// Reset Zoom
	function resetZoom() {

		window._canvas.setHeight(window._canvas.getHeight()/ window._canvas.getZoom());
		window._canvas.setWidth(window._canvas.getWidth()/ window._canvas.getZoom());
		window._canvas.setZoom(1);

		window._canvas.renderAll();

		getFabricCanvases().forEach(function(item) {
			item.css('left', 0);
			item.css('top', 0);
		});

	}

	createListenersKeyboard();

	function createListenersKeyboard() {
		document.onkeydown = onKeyDownHandler;
		//document.onkeyup = onKeyUpHandler;
	}

	function onKeyDownHandler(event) {
		//event.preventDefault();

		var key;
		if (window.event) {
			key = window.event.keyCode;
		} else {
			key = event.keyCode;
		}

		switch (key) {
		case 187: // Zoom IN - Ctrl+"+"
			if (ableToShortcut()) {
				if (event.ctrlKey) {
					event.preventDefault();
					zoomIn();
				}
			}
			break;

		case 189: // Zoom OUT Ctrl+"-"
			if (ableToShortcut()) {
				if (event.ctrlKey) {
					event.preventDefault();
					zoomOut();
				}
			}
			break;

		case 48: // Reset Zoom - Ctrl+"0"
			if (ableToShortcut()) {
				if (event.ctrlKey) {
					event.preventDefault();
					resetZoom();
				}
			}
			break;

		case 8: // Delete
			if (ableToShortcut()) {
				event.preventDefault();
				deleteObjects();

			}
			break;

		case 67: //Copy - Ctrl+c
			if (ableToShortcut()) {
				if (event.ctrlKey) {
					event.preventDefault();
					Copy();
				}
			}
			break;

		case 86: //Paste - Ctrl+v
			if (ableToShortcut()) {
				if (event.ctrlKey) {
					event.preventDefault();
					Paste();
				}
			}
			break;
		default:
			// TODO
			break;
		}
	}

	function ableToShortcut() { //call the shortcut method

		return true;
	}

	// To copy and add to clipboard a copy of the activeObject 
	function Copy() {

		window._canvas.getActiveObject().clone(function(cloned) {
			_clipboard = cloned;
		});
	}
	
	// To paste from clipboard a copy of the activeObject
	function Paste() {
		// clone again to allow multiple copies.
		_clipboard.clone(function(clonedObj) {
			window._canvas.discardActiveObject();
			clonedObj.set({
				left : clonedObj.left + 15,
				top : clonedObj.top + 15,
				evented : true,
				hasControls : false
			});
			if (clonedObj.type === 'activeSelection') {
				// active selection needs a reference to the canvas.
				clonedObj.canvas = window._canvas;
				clonedObj.forEachObject(function(obj) {
					window._canvas.add(obj);
				});
				clonedObj.setCoords();
			} else {
				window._canvas.add(clonedObj);
			}
			_clipboard.top += 15;
			_clipboard.left += 15;
			window._canvas.setActiveObject(clonedObj);
			window._canvas.requestRenderAll();
		});
	}
	
	function myFunction() {
		///canvas.item(0).sourcePath = 'C:\Users\Kurt\Documents\NetBeansProjects\FabricTest\assets';
		console.log(JSON.stringify(window._canvas.toDatalessJSON()));
	}

	$('.Save').click(function() {

		var jsonString = JSON.stringify(window._canvas.toJSON());
		var token = $("meta[name='_csrf']").attr("content"); 
		var header = $("meta[name='_csrf_header']").attr("content");
		
		

		 $.ajax({
		        type: 'POST',
		        url: 'http://localhost:8080/planr/saveLayout',
		        data:jsonString,
		        dataType: 'applicatio/json',
		        beforeSend: function(xhr) {
		            // here it is
		            xhr.setRequestHeader(header, token);
		        },
		        contentType: 'application/json'
		    }).done(function(data) {
		        console.log(data);
		        console.log('AJAX call was successfully executed;')
		    }).fail(function(){
		    	console.log('AJAX call failed :()');
		    	console.log(jsonString);
		    });
		
	});
	

	
	$('.Load').click(function() {

		 var url = "http://localhost:8080/planr/getLayout/15";
	        var data1;
	        var data2;
	        $.getJSON(url, function (data) {
	            console.log(JSON.stringify(data))
	            data1 = data
	            
	            window._canvas.loadFromJSON(data1, window._canvas.renderAll.bind(window._canvas), function(o, object) {
           	fabric.log(o, object);
           	object.set({
				    flipX : false,
				    flipY : false,
				    hasControls : false
				    });
	            });
				window._canvas.renderAll();

	});
	       
	});
	
</script>

</html>