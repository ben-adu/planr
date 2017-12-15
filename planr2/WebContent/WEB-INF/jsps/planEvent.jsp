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
	
	<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/additional-methods.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
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
	  $("#btnContinue1").click(function() {
		    $('ul.tabs').tabs('select_tab', 'test3');
		  });
	  $("#btnContinue2").click(function() {
		    $('ul.tabs').tabs('select_tab', 'test4');
		  });
	  $("#btnContinue3").click(function() {
		    $('ul.tabs').tabs('select_tab', 'test5');
		  });
	  $("#btnContinue4").click(function() {
		    $('ul.tabs').tabs('select_tab', 'test6');
		  });
	  $("#btnBack").click(function() {
		    $('ul.tabs').tabs('select_tab', 'test1');
		  });
	  $("#btnBack1").click(function() {
		    $('ul.tabs').tabs('select_tab', 'test2');
		  });
	  $("#btnBack2").click(function() {
		    $('ul.tabs').tabs('select_tab', 'test3');
		  });
	  $("#btnBack3").click(function() {
		    $('ul.tabs').tabs('select_tab', 'test4');
		  });
	  $("#btnBack4").click(function() {
		    $('ul.tabs').tabs('select_tab', 'test5');
		  });
	});
</script>

<script>
$(document).ready(function() {
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
		$("#size1").hide();
		$("#size2").hide();
		$("#games2").hide();
		$("#games3").hide();
		$("#trailer2").hide();
		$("#displayCar2").hide();
		$("#displayTruck2").hide();
		
	
});
</script>
	
<script>

	$(document).ready(function() {
		
		$('select').material_select();
		  $("#q1").change(function() {
              if ($("#q1").val() == "two"){
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
                  
                  
              }else if ($("#q1").val() == "three"){
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
                  
              }else if ($("#q1").val() == "four"){
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
		  
		  $("#inflate1").change(function() {
              if ($("#inflate1s").val() != 0){
            	  $("#size1").show();
            	  $("#size1").attr('required');
            	  $("#size1").attr('validate');
              } else{
            	  $("#size1").hide();
            	  $("#size1").removeAttr('required');
            	  $("#size1").removeAttr('validate');
              }
		  });
		  
		  $("#inflate2").change(function() {
              if ($("#inflate2s").val() != 0){
            	  $("#size2").show();
            	  $("#size2").attr('required');
              } else{
            	  $("#size2").hide();
            	  $("#size2").removeAttr('required');
              }
		  });
		  
		  $("#games1").change(function() {
              if ($("#games1s").val() != 0){
            	  $("#games2").show();
            	  $("#games3").show();
            	  $("#games2").attr('required');
            	  $("#games3").attr('required');
              } else{
            	  $("#games2").hide();
            	  $("#games3").hide();
            	  $("#games2").removeAttr('required');
            	  $("#games3").removeAttr('required');
              }
		  });
		  
		  $("#trailer1").change(function() {
              if ($("#trailer1s").val() != 0){
            	  $("#trailer2").show();
              } else{
            	  $("#trailer2").hide();
              }
		  });
		  
		  $("#displayCar1").change(function() {
              if ($("#displayCar1s").val() != 0){
            	  $("#displayCar2").show();
              } else{
            	  $("#displayCar2").hide();
              }
		  });
		  
		  $("#displayTruck1").change(function() {
              if ($("#displayTruck1s").val() != 0){
            	  $("#displayTruck2").show();
              } else{
            	  $("#displayTruck2").hide();
              }
		  });
		  
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
	

	<!-- Body -->

	<div class="container">
	
		<h4 style="text-align: center">Event Details</h4>
		<div class="row">
    <div class="col s12">
      <ul class="tabs">
        <li class="tab col s2"><a class="active" href="#test1">Event Info</a></li>
        <li class="tab col s2"><a  href="#test2">Splash Pad</a></li>
        <li class="tab col s2"><a href="#test3">Rentals</a></li>
        <li class="tab col s2"><a href="#test4">MCS Rentals</a></li>
        <li class="tab col s2"><a href="#test5">Vendors</a></li>
        <li class="tab col s2"><a href="#test6">Agreement</a></li>
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
				  <!-- <a id="btnBack" class="waves-effect waves-light btn-large" style="display: block"
					href="" >Back</a>  -->
			</div>  
			<div class="col s6">
				<a id="btnContinue"class="waves-effect waves-light btn-large" style="display: block"
					href="#test2">Next</a>
			</div>
		</div>
    
    </div>
    </div>
    
    
    <div id="test2" class="col s12">
    <!-- Set up dates -->
    <div class="container">
    	
    <c:url value="splashPadSetup" var="url" />
	<form name="splashForm" id="splashForm" method="post" action="${url}" 
			onsubmit="return verify()" class="col s12">
		
    	<div class="row">
				<div class="input-field col s8" id="q1s"><BR><BR><BR>
					<select id="q1" name="q1" required="">
						<option value="" selected>Choose one</option>
						<option value="two">2</option>
						<option value="three">3</option>
						<option value="four">4</option>
					</select><h1><label>How many Splash Pad jets do you need on?</label></h1>
				</div>	
			</div>
			
			<div class="row">
				<div class="input-field col s8" id="q2"><BR><BR><BR>
					<select id="q2s" required="" class="validate">
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
					<select id="q3s">
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
					<select id="q4s">
						<option value="" selected>Choose one</option>
						<option value="north">North</option>
						<option value="south">South</option>
						<option value="east">East</option>
						<option value="west">West</option>
					</select><h1><label>Please choose a side to adjust pressure</label></h1>
				</div>
			
			
				<div class="input-field col s4" id="q5"><BR><BR><BR>
					<select id="q5s">
						<option value="" selected>Choose one</option>
						<option value="55">55%</option>
						<option value="75">75%</option>
						<option value="100">100%</option>
					</select><h1><label>Pressure Level?</label></h1>
				</div>	
				</div>
				
				<div class="row">
				<div class="input-field col s8" id="q6"><BR><BR><BR>
					<select id="q6s">
						<option value="" selected>Choose one</option>
						<option value="north">North</option>
						<option value="south">South</option>
						<option value="east">East</option>
						<option value="west">West</option>
					</select><h1><label>Please choose a side to adjust pressure</label></h1>
				</div>
			
			
				<div class="input-field col s4" id="q7"><BR><BR><BR>
					<select id="q7s">
						<option value="" selected>Choose one</option>
						<option value="55">55%</option>
						<option value="75">75%</option>
						<option value="100">100%</option>
					</select><h1><label>Pressure Level?</label></h1>
				</div>	
				</div>
				
				<div class="row">
				<div class="input-field col s8" id="q8"><BR><BR><BR>
					<select id="q8s">
						<option value="" selected>Choose one</option>
						<option value="north">North</option>
						<option value="south">South</option>
						<option value="east">East</option>
						<option value="west">West</option>
					</select><h1><label>Please choose a side to adjust pressure</label></h1>
				</div>
			
			
				<div class="input-field col s4" id="q9"><BR><BR><BR>
					<select id="q9s">
						<option value="" selected>Choose one</option>
						<option value="55">55%</option>
						<option value="75">75%</option>
						<option value="100">100%</option>
					</select><h1><label>Pressure Level?</label></h1>
				</div>	
				</div>
				
				<div class="row">
				<div class="input-field col s8" id="q10"><BR><BR><BR>
					<select id="q10s">
						<option value="" selected>Choose one</option>
						<option value="north">North</option>
						<option value="south">South</option>
						<option value="east">East</option>
						<option value="west">West</option>
					</select><h1><label>Please choose a side to adjust pressure</label></h1>
				</div>
			
			
				<div class="input-field col s4" id="q11"><BR><BR><BR>
					<select id="q11s">
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
				  <a id="btnBack" class="waves-effect waves-light btn-large" style="display: block"
					href="#test1" >Back</a> 
			</div>  
			<div class="col s6">
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
				<a id="btnContinue1" type="submit" onclick="verify()" class="waves-effect waves-light btn-large" style="display: block"
					href="#test3">Next</a>
			</div>
		</div>
    </div>
    </div>
    
    <script type="text/javascript">
	$(document).ready(function() {
		$("#rentalForm").validate({
			/* errorClass: "my-error-class",
		    validClass: "my-valid-class", */
			rules : {
				
				chairs : "required",
				fences : "required",
				barricades : "required",
				toilets : "required",
				hand : "required",
				foot : "required",
				tables : "required",
				water : "required",
			},
			messages : {
				eventIdentifier : {
					required : "Please enter the name of the equipment"
				},
				price : {
					required : "Please enter the price of the equipment",
					number : "Please enter a price starting from $0.01"
				}
			},
			errorElement : 'div',
			errorPlacement : function(error, element) {
				var placement = $(element).data('error');
				if (placement) {
					$(placement).append(error)
				} else {
					error.insertAfter(element);
				}
			}
		
		});
		
		$('#rentalForm input').on('keyup blur', function () {
	        if ($('#rentalForm input').valid()) {
	            $('#btnContinue2').prop('disabled', false);
	        } else {
	        	$("#btnContinue2").prop('disabled',true)
	        }
	    })
	});
	
	</script>
    
    <div id="test3" class="col s12">
    <div class="container">
    
    <c:url value="equipmentRentals" var="url" />
		<form name="rentalForm" method="post" action="${url}"
			onsubmit="return verify()" id="rentalForm" class="col s12">
    	
    	<div class="row">
    	
    	<span>
    	All questions are mandatory. If a question does not apply to your event, enter "0"<BR>
    	
	
    	
    	</span>
				<div class="input-field col s12"><BR><BR><BR>
						<input type="number" min="0" step="1" required="" class="validate" name="chairs" id="chairs" placeholder="Enter a number">
					<h1><label>How many chairs are you bringing onsite?* </label></h1>
				</div>
		
				<div class="input-field col s12"><BR><BR><BR>
						<input type="number" min="0" step="1" required="" class="validate" name="fences" id="fences" placeholder="Enter a number">
					<h1><label>How many privacy fences are you bringing onsite?* </label></h1>
				</div>
		
				<div class="input-field col s12"><BR><BR><BR>
						<input type="number" min="0" step="1" required="" class="validate" name="barricades" id="barricades" placeholder="Enter a number">
					<h1><label>How many barricades are you bringing onsite?*</label></h1>
				</div>
		
				<div class="input-field col s12"><BR><BR><BR>
						<input type="number" min="0" step="1" required="" class="validate" name="toilets" id="toilets" placeholder="Enter a number">
					<h1><label>How many port-o-lets are you bringing onsite?****</label></h1>
				</div>
		
				<div class="input-field col s12"><BR><BR><BR>
						<input type="number" min="0" step="1" required="" class="validate" name="hand" id="hand" placeholder="Enter a number">
					<h1><label>How many hand-washing stations are you bringing onsite?* </label></h1>
				</div>
		
				<div class="input-field col s12"><BR><BR><BR>
						<input type="number" min="0" step="1" required="" class="validate" name="foot" id="foot" placeholder="Enter a number">
					<h1><label>How many foot-washing stations are you bringing onsite?* </label></h1>
				</div>
		
				<div class="input-field col s12"><BR><BR><BR>
						<input type="number" min="0" step="1" required="" class="validate" name="tables" id="eventIdentifier" placeholder="Enter a number">
					<h1><label>How many tables or picnic tables are you bringing onsite?* </label></h1>
				</div>
		
				<div class="input-field col s12"><BR><BR><BR>
						<input type="number" min="0" step="1" required="" class="validate" name="water" id="water" placeholder="Enter a number">
					<h1><label>How many portable water-filling stations are you bringing onsite?* </label></h1>
				</div>
		</div>
	
		<BR><BR><BR>
		<div class="row">
			<div class="col s6">
				  <a id="btnBack1" class="waves-effect waves-light btn-large" style="display: block"
					href="#test2" >Back</a> 
			</div>  
			<div class="col s6">
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
				<a id="btnContinue2" type="submit" onclick="verify()" class="waves-effect waves-light btn-large" style="display: block"
					href="#test4">Next</a>
			</div>
		</div>
    </form>
    
    
    
    
    
    
   <!--  <footer class="page-footer">
          <div class="container">
            <div class="row">
              <div class="col s12">
                <h5 class="white-text">Footnotes</h5>
                <p class="grey-text text-lighten-4">
*EQUIPMENT RENTAL: Rental companies that will be onsite at MCS to drop off or pick up equipment outside of permit hours listed in a Facility Rental contract must have prior approval from MCS. 
	Event organizers must submit a request for equipment to be onsite outside of permit hours to MCS thirty (30) days prior to event for consideration. Proposed drop-off and pick-up times must be included with this request. 
	If approved, the event organizer must submit the following to MCS by seven (7) days prior to event on behalf of any company providing equipment rentals:<BR>
		- A copy of the service provider’s business license<BR>
		- $2 million liability insurance naming the City as an additional insured on the City’s template.<BR>
	Additional documentation including WSIB clearance may be required depending on the type of equipment being rented and the work being performed.<BR>
<p>
** For set up costs, see the Celebration Square Fees in the Event Planning Toolkit section of the Celebration Square website

*** INFLATABLES: All inflatables are subject to approval by MCS. A maximum of three (3) inflatable bouncers are allowed onsite at any one time. <BR>
Inflatable bouncers are restricted to the lawn area of the Lower Square; they must be secured with sand bags or water barrels and continuously supervised by qualified staff. <BR>
Event organizers must submit all technical specifications (dimensions, electrical requirements, image or photo) and proposed location(s) to MCS thirty (30) days prior <BR>
to event for consideration. If approved, the event organizer must submit the following to MCS seven (7) days prior to event on behalf of any company providing inflatables or any other high-risk activities:<BR>
- TSSA permit & operator license for inflatable bouncers<BR>
- A copy of the service provider’s business license<BR>
- $5 million liability insurance naming the City as an additional insured on the City’s Template<BR>

****WASHROOMS: Events with expected attendance of less than 5,000 can be accommodated by the existing indoor washroom <BR>
facilities located on the Upper Square, in City Hall, and in the Central Library. Custodial staff charges for indoor <BR>
washrooms cleaning are mandatory for all Large Events. Events with expected attendance over 5,000 must arrange for portable <BR>
washroom facilities, including accessible facilities and hand washing stations. The minimum MCS requirements are: <BR>
- Attendance 5,000–10,000: 2 regular washrooms, 1 accessible washroom, 1 hand washing station<BR>
- Attendance 10,000–15,000: 4 regular washrooms, 2 accessible washrooms, 2 hand washing stations<BR>
- Attendance 15,000–20,000: 6 regular washrooms, 3 accessible washrooms, 3 hand washing stations<BR>
- Attendance 20,000+: 8 regular washrooms, 4 accessible washrooms, 4 hand washing stations<BR>
Equipment Rental Guidelines apply to portable washrooms.

      </div>
      
    </div>
  </div>
  <div class="footer-copyright">
    <div class="container">
    © 2017 Copyright 
    </div>
  </div>
</footer> -->
    	
    
	</div>
    </div>
    <script type="text/javascript">
	$(document).ready(function() {
		$("#mcsForm").validate({
	rules : {
				
		metalBarricades : "required"
			}
		});
	});
	</script>
    
    <div id="test4" class="col s12">
    <div class="container">
   <form name="mcsForm" method="post" action="${url}"
			onsubmit="return verify()" id="mcsForm" class="col s12">
   			<div class="row col s12">
   				<div class="input-field col s8" required="">
				    <span><B>Metal barricades</B></span><BR>
				    <span>7' x 3.67'</span>
				    <select id="metalBarricades" name="metalBarricades" required="" class="validate">
				      <option value="" disabled selected>Choose one</option>
				      <option value="self">Set up yourself</option>
				      <option value="city">Set up by City staff at additional cost**</option>
				    </select>
				</div>
			</div>
			
			<div class="row col s12">
				<div class="input-field col s8" required="">
				    <span><B>Picnic tables</B></span><BR>
				    <span>regular 5' x 6', accessible 5' x 7'</span>
				    <select required="">
				      <option value="" disabled selected>Choose one</option>
				      <option value="self">Set up yourself</option>
				      <option value="city">Set up by City staff at additional cost**</option>
				    </select>
				</div>
			</div>
			
			<div class="row col s12">	
				<div class="input-field col s8" required="">
				    <span><B>White picket fences</B></span><BR>
				    <span>6' x 3.4'</span>
				    <select required="">
				      <option value="" disabled selected>Choose one</option>
				      <option value="remain">Remain in current default location</option>
				      <option value="remove">Remove from site</option>
				      <option value="city">Set up by City staff at additional cost**</option>
				    </select>
				</div>
			</div>
			
			<div class="row col s12">	
				<div class="input-field col s8" required="">
				    <span><B>Umbrellas</B></span><BR>
				    <span>10' x 10'</span>
				    <select required="">
				      <option value="" disabled selected>Choose one</option>
				      <option value="remain">Remain in current default location</option>
				      <option value="remove">Remove from site</option>
				      <option value="city">Set up by City staff at additional cost**</option>
				    </select>
				</div>
			</div>	
			
			<div class="row col s12">	
				<div class="input-field col s8" required="">
				    <span><B>Bistro tables and chairs</B></span><BR>
				    <select required="">
				      <option value="" disabled selected>Choose one</option>
				      <option value="self">Set up yourself</option>
				      <option value="remain">Remain in current default location</option>
				      <option value="remove">Remove from site</option>
				      <option value="city">Set up by City staff at additional cost**</option>
				    </select>
				</div>
			</div>

					<div class="row col s12">
						<div class="input-field col s8">
							<textarea id="notes1" class="materialize-textarea"></textarea>
							<label for="notes1">Additional notes about equipment</label>
						</div>
					</div>
					</form>

		<div class="row">
			<div class="col s6">
				  <a id="btnBack2" class="waves-effect waves-light btn-large" style="display: block"
					href="#test4" >Back</a> 
			</div>  
			<div class="col s6">
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
				<a id="btnContinue3" type="submit" onclick="verify()" class="waves-effect waves-light btn-large" style="display: block"
					href="#test5">Next</a>
			</div>
		</div>
				</div>
		
    </div>
    </div>
    
    <script type="text/javascript">
	$(document).ready(function() {
		$("#vendors").validate({
			/* errorClass: "my-error-class",
		    validClass: "my-valid-class", */
			rules : {
				
				inflate1s : "required",
				inflate1size : "required",
				inflate2s : "required",
				inflate2size : "required",
				games1s : "required",
				foodTruck1s : "required",
				
			},
			messages : {
				eventIdentifier : {
					required : "Please enter the name of the equipment"
				},
				price : {
					required : "Please enter the price of the equipment",
					number : "Please enter a price starting from $0.01"
				}
			},
			errorElement : 'div',
			errorPlacement : function(error, element) {
				var placement = $(element).data('error');
				if (placement) {
					$(placement).append(error)
				} else {
					error.insertAfter(element);
				}
			}
		
		});
		
		/* $('#rentalForm input').on('keyup blur', function () {
	        if ($('#rentalForm input').valid()) {
	            $('#btnContinue2').prop('disabled', false);
	        } else {
	        	$("#btnContinue2").prop('disabled',true)
	        }
	    }) */
	});
	
	</script>
    
    
    
    
   <div id="test5" class="col s12">
    
    <div class="container">
     <form name="vendors" method="post" action="${url}"
			onsubmit="return verify()" id="vendors" class="col s12">
     <div class="row">
     	<div id="inflate1" class="input-field col s12"><BR><BR><BR>
						<input id="inflate1s" type="number" min="0" step="1" required="" class="validate" placeholder="Enter a number">
					<h1><label>How many Inflatables (sports zone type) are you bringing onsite?***</label></h1>
		</div>
     </div>
     
     <div class="row">
     	<div id ="size1" class="input-field col s12"><BR><BR><BR>
						<input id="inflate1size" type="text">
					<h1><label>Provide the size of each sports zone type inflatable</label></h1>
		</div>
     </div>
     
     <div class="row">
     	<div id="inflate2" class="input-field col s12"><BR><BR><BR>
						<input id="inflate2s" type="number" min="0" max="3" step="1" required="" class="validate" placeholder="Enter a number">
					<h1><label>How many Inflatables (bouncy castle type) are you bringing onsite?***</label></h1>
		</div>
     </div>
     
     <div class="row">
     	<div id ="size2" class="input-field col s12"><BR><BR><BR>
						<input id="inflate2size" type="text">
					<h1><label>Provide the size of bouncy castle type inflatable</label></h1>
		</div>
     </div>
     
     <div class="row">
     	<div id="games1" class="input-field col s12"><BR><BR><BR>
						<input id="games1s" type="number" min="0" step="1" required="" class="validate" placeholder="Enter a number">
					<h1><label>Are you bringing rides or games onsite (ex: train, plush animals, tennis)?***</label></h1>
		</div>
     </div>
     
     <div class="row">
     	<div id ="games2" class="input-field col s12"><BR><BR><BR>
						<input id="games3type" type="text">
					<h1><label>If bringing rides or games onsite, what kind?***</label></h1>
		</div>
     </div>
     
     <div class="row">
     	<div id ="games3" class="input-field col s12"><BR><BR><BR>
			<input id="games3size" type="text">
				<h1><label>Provide the size of the area required for ride or game set-up</label></h1>
		</div>
     </div>
     
     
		<div class="row">
   			<div id="foodTruck1" class="input-field col s12"><BR><BR><BR>
				<input id="foodTruck1s" type="number" min="0" step="1" required="" class="validate" placeholder="Enter a number">
					<h1><label>How many food trucks are you bringing onsite?</label></h1>
			</div>
   		</div>
   		
   		<div class="row">
   			<div id="trailer1" class="input-field col s12"><BR><BR><BR>
				<input id="trailer1s" type="number" min="0" step="1" required="" class="validate" placeholder="Enter a number">
					<h1><label>How many trailers or food storage vehicles are you bringing onsite?</label></h1>
			</div>
   		</div>
   		
   		<div class="row">
	     	<div id ="trailer2" class="input-field col s12"><BR><BR><BR>
					<textarea id="trailer2s" class="materialize-textarea"></textarea>
						<h1><label for="trailer2s">If bringing trailers or food storage vehicles onsite, provide the dimensions for each</label></h1>
			</div>
     </div>
     
     <div class="row">
   			<div id="displayCar1" class="input-field col s12"><BR><BR><BR>
				<input id="displayCar1s" type="number" min="0" step="1" required="" class="validate" placeholder="Enter a number">
					<h1><label>How many display cars are you bringing onsite?</label></h1>
			</div>
   		</div>
   		
   		<div class="row">
	     	<div id ="displayCar2" class="input-field col s12"><BR><BR><BR>
					<textarea id="displayCar2s" class="materialize-textarea"></textarea>
						<h1><label for="displayCar2s">If bringing display cars onsite, provide the details for each </label></h1>
			</div>
     </div>
     
     <div class="row">
   			<div id="displayTruck1" class="input-field col s12"><BR><BR><BR>
				<input id="displayTruck1s" type="number" min="0" step="1" required="" class="validate" placeholder="Enter a number">
					<h1><label>How many display trucks are you bringing onsite?</label></h1>
			</div>
   		</div>
   		
   		<div class="row">
	     	<div id ="displayTruck2" class="input-field col s12"><BR><BR><BR>
					<textarea id="displayTruck2s" class="materialize-textarea"></textarea>
						<h1><label for="displayCar2s">If bringing display trucks onsite, provide the details for each</label></h1>
			</div>
     </div>
     
     
		<BR><BR><BR>
		<div class="row">
			<div class="col s6">
				  <a id="btnBack3" class="waves-effect waves-light btn-large" style="display: block"
					href="#test4" >Back</a> 
			</div>  
			
			<div class="col s6">
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
				<a id="btnContinue4" type="submit" onclick="verify()" class="waves-effect waves-light btn-large" style="display: block"
					href="#test6">Next</a>
			</div>
		</div>
		
     
    </form>
    
    </div>
    </div> 
    
    <div id="test6" class="col s12">
    
    <div class="container">
    
     <c:url value="additionalDetails" var="url" />
		<form name="form" method="post" action="${url}"
			onsubmit="return verify()" class="col s12">
			
			
    	<div class="row">
				<div class="input-field col s12"><BR><BR><BR>
						<input type="number" min="1" step="1" required="" class="validate">
					<h1><label>How many attendees do you expect in total?</label></h1>
				</div>
		</div>
		
		<div class="row">
		
				<div class="input-field col s12" required="">
				    <select required="">
				      <option value="" disabled selected>Choose one</option>
				      <option value="yes">Yes</option>
				      <option value="no">No</option>
				    </select>
				    <label>I confirm that I have read and understood the MCS Guidelines</label>
				    <BR>
				    <span> Please refer the following link to find a copy of <a href="guidelines" target="_blank">MCS Guidelines</a></span>
			  </div>
		</div>	
			
		<BR><BR><BR>
		<div class="row">
			<div class="col s6">
				  <a id="btnBack4" class="waves-effect waves-light btn-large" style="display: block"
					href="#test5" >Back</a> 
			</div>  
			<div class="col s6">
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
				<a id="createLayout" type="submit" onclick="verify()" class="waves-effect waves-light btn-large" style="display: block"
					href="createLayout">Create Layout</a>
			</div>
		</div>
    </form>
    
    </div>
    </div>
  </div>
	


</body>
</html>