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
	  $("#btnBack").click(function() {
		    $('ul.tabs').tabs('select_tab', 'test1');
		  });
	  $("#btnBack1").click(function() {
		    $('ul.tabs').tabs('select_tab', 'test2');
		  });
	  $("#btnBack2").click(function() {
		    $('ul.tabs').tabs('select_tab', 'test3');
		  });
	  $("#btnContinue3").click(function() {
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
        <li class="tab col s2"><a  href="#test2">Setup/Cleanup Date</a></li>
        <li class="tab col s2"><a href="#test3">Splash Pad</a></li>
        <li class="tab col s2"><a href="#test4">Additional Details</a></li>
        <li class="tab col s2"><a href="#test5">Equipment Rentals</a></li>
        <li class="tab col s2"><a href="#test6">NEW STUFF HERE</a></li>
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
				  <a id="btnBack" class="waves-effect waves-light btn-large" style="display: block"
					href="#test1" >Back</a> 
			</div>  
			<div class="col s6">
				<a id="btnContinue1"class="waves-effect waves-light btn-large" style="display: block"
					href="#test3">Next</a>
			</div>
		</div>
    
    </div>
		</div>
    </div>
    
    <div id="test3" class="col s12">
    <div class="container">
    
    <c:url value="splashPadSetup" var="url" />
	<form name="form" method="post" action="${url}" 
			onsubmit="return verify()" class="col s12">
		
    	<div class="row">
				<div class="input-field col s8" id="q1s"><BR><BR><BR>
					<select id="q1" name="q1" required="">
						<option value="none" selected>Choose one</option>
						<option value="two">2</option>
						<option value="three">3</option>
						<option value="four">4</option>
					</select><h1><label>How many Splash Pad jets do you need on?</label></h1>
				</div>	
			</div>
			
			<div class="row">
				<div class="input-field col s8" id="q2"><BR><BR><BR>
					<select id="q2s">
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
			
		
    
    </div>
    </div>
    
    <div id="test4" class="col s12">
    <div class="container">
    <c:url value="additionalDetails" var="url" />
		<form name="form" method="post" action="${url}"
			onsubmit="return verify()" class="col s12">
    	<div class="row">
				<div class="input-field col s12"><BR><BR><BR>
						<input type="number" min="1" step="1" required="">
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
				    <label>I confirm that I have read and understood the <a href="/guidelines">MCS Guidelines</a></label>
			  </div>
		</div>	
			
		<BR><BR><BR>
		<div class="row">
			<div class="col s6">
				  <a id="btnBack2" class="waves-effect waves-light btn-large" style="display: block"
					href="#test3" >Back</a> 
			</div>  
			<div class="col s6">
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
				<a id="btnContinue3" type="submit" onclick="verify()" class="waves-effect waves-light btn-large" style="display: block"
					href="#test5">Next</a>
			</div>
		</div>
    </form>
    </div>
    </div>
    
   <div id="test5" class="col s12">
    
    <div class="container">
    
    <c:url value="equipmentRentals" var="url" />
		<form name="form" method="post" action="${url}"
			onsubmit="return verify()" class="col s12">
    	
    	<div class="row">
				<div class="input-field col s12"><BR><BR><BR>
						<input type="number" min="0" step="1" required="" placeholder="Enter a number">
					<h1><label>How many chairs are you bringing onsite?* </label></h1>
				</div>
		</div>
		<div class="row">
				<div class="input-field col s12"><BR><BR><BR>
						<input type="number" min="0" step="1" required="" placeholder="Enter a number">
					<h1><label>How many privacy fences are you bringing onsite?* </label></h1>
				</div>
		</div>
		<div class="row">
				<div class="input-field col s12"><BR><BR><BR>
						<input type="number" min="0" step="1" required="" placeholder="Enter a number">
					<h1><label>How many barricades are you bringing onsite (in addition to the ones on already on the site)?*</label></h1>
				</div>
		</div>
		<div class="row">
				<div class="input-field col s12"><BR><BR><BR>
						<input type="number" min="0" step="1" required="" placeholder="Enter a number">
					<h1><label>How many port-o-lets are you bringing onsite?****</label></h1>
				</div>
		</div>
		<div class="row">
				<div class="input-field col s12"><BR><BR><BR>
						<input type="number" min="0" step="1" required="" placeholder="Enter a number">
					<h1><label>How many hand-washing stations are you bringing onsite?* </label></h1>
				</div>
		</div>
		<div class="row">
				<div class="input-field col s12"><BR><BR><BR>
						<input type="number" min="0" step="1" required="" placeholder="Enter a number">
					<h1><label>How many foot-washing stations are you bringing onsite?* </label></h1>
				</div>
		</div>
		<div class="row">
				<div class="input-field col s12"><BR><BR><BR>
						<input type="number" min="0" step="1" required="" placeholder="Enter a number">
					<h1><label>How many tables or picnic tables are you bringing onsite?* </label></h1>
				</div>
		</div>
		<div class="row">
				<div class="input-field col s12"><BR><BR><BR>
						<input type="number" min="0" step="1" required="" placeholder="Enter a number">
					<h1><label>How many portable water-filling stations are you bringing onsite?* </label></h1>
				</div>
		</div>
	
		<BR><BR><BR>
		<div class="row">
			<div class="col s6">
				  <a id="btnBack2" class="waves-effect waves-light btn-large" style="display: block"
					href="#test3" >Back</a> 
			</div>  
			<div class="col s6">
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
				<a id="btnContinue3" type="submit" onclick="verify()" class="waves-effect waves-light btn-large" style="display: block"
					href="#test5">Next</a>
			</div>
		</div>
    </form>
    <footer class="page-footer">
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
</footer>
    	
    </div>
    </div> 
    
    
  </div>
	


</body>
</html>