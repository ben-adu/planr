<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
</head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<script src="scripts/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/sweetalert.css">
<link rel="stylesheet" href="css/style.css">
<title>Splash Pad</title>
<script>
	(function($) {
		$(function() {

			$('.button-collapse').sideNav();

		}); // end of document ready
	})(jQuery); // end of jQuery name space
</script>
<script>
$('select').material_select();
$(document).ready(function() {
	$('select').material_select();
		$("#q2").hide();
		$("#q3").hide();
		$("#q4").hide();
		$("#q5").hide();
		$("#q6").hide();
		$("#q7").hide();
		$("#q8").hide();
		$("#q9").hide();
		$("#q10").hide();
		$("#q11").hide();
		
		
});
</script>
<script>

	$(document).ready(function() {
		
		  $("#splashPadNo").change(function() {
              if ($("#splashPadNo").val() == "two"){
                  $("#q2").show();
                  $("#q3").show();
                  $("#q4").show();
                  $("#q5").show();
                  $("#q6").show();
                  $("#q7").show();
                  $("#q8").hide();
                  $("#q9").hide();
                  $("#q10").hide();
                  $("#q11").hide();
                  
                  
              }else if ($("#splashPadNo").val() == "three"){
                  $("#q2").show();
                  $("#q3").hide();
                  $("#q4").show();
                  $("#q5").show();
                  $("#q6").show();
                  $("#q7").show();
                  $("#q8").show();
                  $("#q9").show();
                  $("#q10").hide();
                  $("#q11").hide();
                  
              }else if ($("#splashPadNo").val() == "four"){
            	  $("#q2").hide();
          		  $("#q3").hide();
            	  $("#q4").show();
                  $("#q5").show();
                  $("#q6").show();
                  $("#q7").show();
                  $("#q8").show();
                  $("#q9").show();
                  $("#q10").show();
                  $("#q11").show();
                  
              }else{
            	$("#q2").hide();
          		$("#q3").hide();
          		$("#q4").hide();
          		$("#q5").hide();
          		$("#q6").hide();
          		$("#q7").hide();
          		$("#q8").hide();
          		$("#q9").hide();
          		$("#q10").hide();
          		$("#q11").hide();
              }
            	  
          });
	});
</script>

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
					<a href="#!name"><span class="white-text name">${pageContext.request.userPrincipal.name}</span></a> <a
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
	
	
	<div class="container">
    	<h4 style="text-align: center">Splash Pad Configuration</h4>
    <c:url value="splashPadSetup" var="url" />
	<form name="form" method="post" action="${url}" 
			onsubmit="return verify()" class="col s12">
		
    	<div class="row">
				<div class="input-field col s8" id="q1s"><BR><BR><BR>
					<select id="splashPadNo" name="splashPadNo" required="">
						<option value="none" selected>Choose one</option>
						<option value="two">2</option>
						<option value="three">3</option>
						<option value="four">4</option>
					</select><h1><label>How many Splash Pad jets do you need on?</label></h1>
				</div>	
			</div>
			
			<div class="row">
				<div class="input-field col s8" id="q2"><BR><BR><BR>
					<select id="splashPadOne" name="splashPadOne">
						<option value="" selected>Choose one</option>
						<option value="north">North</option>
						<option value="south">South</option>
						<option value="east">East</option>
						<option value="west">West</option>
					</select><h1><label>Which side of the Splash Pad would you like to turn off?</label></h1>
				</div>	
			</div>
			
			<div class="row">
				<div class="input-field col s8" id="q3"><BR><BR><BR>
					<select id="splashPadTwo" name="splashPadTwo">
						<option value="" selected>Choose one</option>
						<option value="north">North</option>
						<option value="south">South</option>
						<option value="east">East</option>
						<option value="west">West</option>
					</select><h1><label>Which side of the Splash Pad would you like to turn off?</label></h1>
				</div>
			</div>
			
			<div class="row">
				<div class="input-field col s8" id="q4"><BR><BR><BR>
					<select id="pressureOne" name="pressureOne">
						<option value="" selected>Choose one</option>
						<option value="north">North</option>
						<option value="south">South</option>
						<option value="east">East</option>
						<option value="west">West</option>
					</select><h1><label>Please choose a side to adjust pressure</label></h1>
				</div>
			
			
				<div class="input-field col s4" id="q5"><BR><BR><BR>
					<select id="pressureLevelOne" name="pressureLevelOne">
						<option value="" selected>Choose one</option>
						<option value="55">55%</option>
						<option value="75">75%</option>
						<option value="100">100%</option>
					</select><h1><label>Pressure Level?</label></h1>
				</div>	
				</div>
				
				<div class="row">
				<div class="input-field col s8" id="q6"><BR><BR><BR>
					<select id="pressureTwo" name="pressureTwo">
						<option value="" selected>Choose one</option>
						<option value="north">North</option>
						<option value="south">South</option>
						<option value="east">East</option>
						<option value="west">West</option>
					</select><h1><label>Please choose a side to adjust pressure</label></h1>
				</div>
			
			
				<div class="input-field col s4" id="q7"><BR><BR><BR>
					<select id="pressureLevelTwo" name="pressureLevelTwo">
						<option value="" selected>Choose one</option>
						<option value="55">55%</option>
						<option value="75">75%</option>
						<option value="100">100%</option>
					</select><h1><label>Pressure Level?</label></h1>
				</div>	
				</div>
				
				<div class="row">
				<div class="input-field col s8" id="q8"><BR><BR><BR>
					<select id="pressureThree" name="pressureThree">
						<option value="" selected>Choose one</option>
						<option value="north">North</option>
						<option value="south">South</option>
						<option value="east">East</option>
						<option value="west">West</option>
					</select><h1><label>Please choose a side to adjust pressure</label></h1>
				</div>
			
			
				<div class="input-field col s4" id="q9"><BR><BR><BR>
					<select id="pressureLevelThree" name="pressureLevelThree">
						<option value="" selected>Choose one</option>
						<option value="55">55%</option>
						<option value="75">75%</option>
						<option value="100">100%</option>
					</select><h1><label>Pressure Level?</label></h1>
				</div>	
				</div>
				
				<div class="row">
				<div class="input-field col s8" id="q10"><BR><BR><BR>
					<select id="pressureFour" name="pressureFour">
						<option value="" selected>Choose one</option>
						<option value="north">North</option>
						<option value="south">South</option>
						<option value="east">East</option>
						<option value="west">West</option>
					</select><h1><label>Please choose a side to adjust pressure</label></h1>
				</div>
			
			
				<div class="input-field col s4" id="q11"><BR><BR><BR>
					<select id="pressureLevelFour" name="pressureLevelFour">
						<option value="" selected>Choose one</option>
						<option value="55">55%</option>
						<option value="75">75%</option>
						<option value="100">100%</option>
					</select><h1><label>Pressure Level?</label></h1>
				</div>	
		</div>
		</form>
		
		<div class="row">
			<div class="col s6">
				  
			</div>  
			<div class="col s6">
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
				<a id="btnContinue1" type="submit" onclick="verify()" class="waves-effect waves-light btn-large" style="display: block"
					href="rentals">Next</a>
			</div>
		</div>
    </div>
</body>
</html>