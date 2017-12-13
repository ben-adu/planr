<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	src="https://cdnjs.cloudflare.com/ajax/libs/fabric.js/1.7.19/fabric.js"></script>
<script src="scripts/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/sweetalert.css">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/index.css">
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
	<!-- NAV -->
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
	<!--  END OF NAV -->
	<!-- Breadcrumb -->
	




	<!-- Body -->

	<div class="row">
	<button onclick="changeView(1);">Default</button>
	<button onclick="changeView(2);">Benches</button>
	<button onclick="changeView(3);">Bistro Table/Chair</button>
	<button onclick="changeView(4);">Crowd Control Barricades</button>
	<button onclick="changeView(5);">Display Vehicle Zones</button>
	<button onclick="changeView(6);">Drive & Park Zones</button>
	<button onclick="changeView(7);">Electrical</button>
	<button onclick="changeView(8);">First-Aid Tent</button>
	<button onclick="changeView(9);">Food Vendor w/ Electrical</button>
	<button onclick="changeView(10);">Food Vendor w/o Electrical</button>
	</div>
	
	<div class="row">
	
		<div class="col s0">

			<div id="left-panel">
				<ul class="list-inline" id="toolbar">
					<li><a
						class="btn-floating btn tooltipped btn-large waves-effect waves-light red" data-position="right" data-delay="50" data-tooltip="Enable Pencil"><i
							class="material-icons" value="start drawing"
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

			<div class="canvas-container">
				<canvas id="canvas1" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas2" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas3" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas4" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas5" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas6" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas7" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas8" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas9" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas10" style="border:1px solid #ccc"></canvas>
				<%-- <canvas id="canvas11" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas12" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas13" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas14" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas15" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas16" style="border:1px solid #ccc"></canvas>
				<canvas id="canvas17" style="border:1px solid #ccc"></canvas> --%>
			</div>
		</div>

		<div class="col s2">
			<div class="furniture">
				<ul class="collapsible" data-collapsible="accordion" id="image-list">
				
					<li>
					<div class="collapsible-header" id="group1">Food vendor w/o electrical</div>
					<div class="collapsible-body">
						<span>
							<img draggable="true" src="images/Food without electric/10x10.png" height="40">
						<BR>
							<img draggable="true" src="images/Food without electric/10x15.png" height="40">
						<BR>
							<img draggable="true" src="images/Food without electric/15x15.png" height="40">
						<BR>
							<img draggable="true" src="images/Food without electric/10x20.png" height="40">
						<BR>
							<img draggable="true" src="images/Food without electric/20x20.png" height="40">
						<BR>
							<img draggable="true" src="images/Food without electric/>20x20.png" height="40">
						<BR>
							<img draggable="true" src="images/Food without electric/>20x30.png" height="40">
						</span>
					</div>
					</li>
					
					<li>
					<div class="collapsible-header">Food vendor with electrical</div>
					<div class="collapsible-body">
						<span>
							<img draggable="true" src="images/Food with electric/10x10.png" height="40">
						<BR>
							<img draggable="true" src="images/Food with electric/10x15.png" height="40">
						<BR>
							<img draggable="true" src="images/Food with electric/15x15.png" height="40">
						<BR>
							<img draggable="true" src="images/Food with electric/10x20.png" height="40">
						<BR>
							<img draggable="true" src="images/Food with electric/20x20.png" height="40">
						<BR>
							<img draggable="true" src="images/Food with electric/>20x20.png" height="40">
						<BR>
							<img draggable="true" src="images/Food with electric/>20x30.png" height="40">
						</span>
					</div>
					</li>
					
					<li>
					<div class="collapsible-header">Vendor without electrical</div>
					<div class="collapsible-body">
						<span>
							<img draggable="true" src="images/Vendor without electric/10x10.png" height="40">
						<BR>
							<img draggable="true" src="images/Vendor without electric/10x15.png" height="40">
						<BR>
							<img draggable="true" src="images/Vendor without electric/15x15.png" height="40">
						<BR>
							<img draggable="true" src="images/Vendor without electric/10x20.png" height="40">
						<BR>
							<img draggable="true" src="images/Vendor without electric/20x20.png" height="40">
						<BR>
							<img draggable="true" src="images/Vendor without electric/>20x20.png" height="40">
						<BR>
							<img draggable="true" src="images/Vendor without electric/>20x30.png" height="40">
						</span>
					</div>
					</li>
					
					<li>
					<div class="collapsible-header">Vendor with electrical</div>
					<div class="collapsible-body">
						<span>
							<img draggable="true" src="images/Vendor with electric/10x10.png" height="40">
						<BR>
							<img draggable="true" src="images/Vendor with electric/10x15.png" height="40">
						<BR>
							<img draggable="true" src="images/Vendor with electric/15x15.png" height="40">
						<BR>
							<img draggable="true" src="images/Vendor with electric/10x20.png" height="40">
						<BR>
							<img draggable="true" src="images/Vendor with electric/20x20.png" height="40">
						<BR>
							<img draggable="true" src="images/Vendor with electric/>20x20.png" height="40">
						<BR>
							<img draggable="true" src="images/Vendor with electric/>20x30.png" height="40">
						</span>
					</div>
					</li>
					
					<li>
					<div class="collapsible-header">Portables</div>
					<div class="collapsible-body">
						<span>
							<img draggable="true" src="images/Portables/portolet.png" height="40">
						<BR>
							<img draggable="true" src="images/Portables/handwashstation.png" height="40">
						<BR>
							<img draggable="true" src="images/Portables/waterStation.png" height="40">
						<BR>
						</span>
					</div>
					</li>
					
				</ul>
			</div>
		</div>
	</div>
	
	<div id="JSON">
		<button id="Save" class="Save" style="background-color: black; color: yellow;">Save Test</button>
		
		<button id="Load" class="Load"	style="background-color: black; color: yellow;">Load Test</button>
		
		<button id="demo" onclick="myFunction()"
			style="background-color: black; color: yellow;">Show JSON in
			console.</button>

		<a></a>
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

	function initCanvas() {

		$('.canvas-container')
				.each(
						function(index) {
							
							var activeCanvas;
							var canvasContainer = $(this)[0];
							
							var canvas1 = $("canvas", this)[0];
							
							var canvasOne = window._canvas = new fabric.Canvas(canvas1);
							var canvasTwo = new fabric.Canvas(canvas2);
							var canvasThree = new fabric.Canvas(canvas3);
							var canvasFour = new fabric.Canvas(canvas4);
							var canvasFive = new fabric.Canvas(canvas5);
							var canvasSix = new fabric.Canvas(canvas6);
							var canvasSeven = new fabric.Canvas(canvas7);
							var canvasEight = new fabric.Canvas(canvas8);
							var canvasNine = new fabric.Canvas(canvas9);
							var canvasTen = new fabric.Canvas(canvas10);
							/* var canvasEleven = new fabric.Canvas(canvas11);
							var canvasTwelve = new fabric.Canvas(canvas12);
							var canvasThirteen = new fabric.Canvas(canvas13);
							var canvasFourteen = new fabric.Canvas(canvas14);
							var canvasFifteen = new fabric.Canvas(canvas15);
							var canvasSixteen = new fabric.Canvas(canvas16);
							var canvasSeventeen = new fabric.Canvas(canvas17); */
							
							
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
											top : 0
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
											top : 0
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
											top : 0
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
											top : 0
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
											top : 0
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
											top : 0
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
											top : 0
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
											top : 0
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
											top : 0
										});
								var canvasHeight10 = canvasTen.setHeight(img.height);
								var canvasWidth10 = canvasTen.setWidth(img.width);
								canvasWidth10, canvasHeight10;
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
							}

							function handleDragEnter(e) {
								this.classList.add('over');
							}

							function handleDragLeave(e) {
								this.classList.remove('over');
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

								var offset = $(canvas1).offset();
								var y = e.clientY - (offset.top + imageOffsetY);
								var x = e.clientX - (offset.left + imageOffsetX);

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
/* 
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
	})(); */

	
	function changeView(value) {
	    if (value == 1) {
	        activeCanvas = canvas1;
	        
	        $('#canvas1').parent().css('display', 'block');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	    }

	    if (value == 2) {
	        activeCanvas = canvas2;
	        
	        $('#canvas1').parent().css('display', 'none');
	        $('#canvas2').parent().css('display', 'block');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	    }
	    
	    if (value == 3) {
	        activeCanvas = canvas3;
	        
	        $('#canvas1').parent().css('display', 'none');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'block');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	    }
	    
	    if (value == 4) {
	        activeCanvas = canvas4;
	        
	        $('#canvas1').parent().css('display', 'none');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'block');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	    }
	    
	    if (value == 5) {
	        activeCanvas = canvas5;
	        
	        $('#canvas1').parent().css('display', 'none');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'block');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	    }
	    
	    if (value == 6) {
	        activeCanvas = canvas6;
	        
	        $('#canvas1').parent().css('display', 'none');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'block');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	    }
	    
	    if (value == 7) {
	        activeCanvas = canvas7;
	        
	        $('#canvas1').parent().css('display', 'none');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'block');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	    }
	    
	    if (value == 8) {
	        activeCanvas = canvas7;
	        
	        $('#canvas1').parent().css('display', 'none');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'block');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'none');
	    }
	    
	    if (value == 9) {
	        activeCanvas = canvas7;
	        
	        $('#canvas1').parent().css('display', 'none');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'block');
	        $('#canvas10').parent().css('display', 'none');
	    }
	    
	    if (value == 10) {
	        activeCanvas = canvas7;
	        
	        $('#canvas1').parent().css('display', 'none');
	        $('#canvas2').parent().css('display', 'none');
	        $('#canvas3').parent().css('display', 'none');
	        $('#canvas4').parent().css('display', 'none');
	        $('#canvas5').parent().css('display', 'none');
	        $('#canvas6').parent().css('display', 'none');
	        $('#canvas7').parent().css('display', 'none');
	        $('#canvas8').parent().css('display', 'none');
	        $('#canvas9').parent().css('display', 'none');
	        $('#canvas10').parent().css('display', 'block');
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

	/* var panning = false; //panning canvas using mouse
	window._canvas.on('mouse:up', function (e) {
	    panning = false;
	});

	window._canvas.on('mouse:down', function (e) {
	    panning = true;
	});
	window._canvas.on('mouse:move', function (e) {
	    if (panning && e && e.e) {
	        debugger;
	        var units = 1;
	        var delta = new fabric.Point(e.e.movementX, e.e.movementY);
	        window._canvas.relativePan(delta);
	    }
	}); */
	
	
	function deleteObjects() {
		var activeObject = window._canvas.getActiveObject();
		var activeGroup = window._canvas.getActiveGroup();
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

		window._canvas.setHeight(window._canvas.getHeight()
				/ window._canvas.getZoom());
		window._canvas.setWidth(window._canvas.getWidth()
				/ window._canvas.getZoom());
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
		// clone again, so you can do multiple copies.
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
	
</script>

</html>