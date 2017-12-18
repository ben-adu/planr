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
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<script src="scripts/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/sweetalert.css">
<link rel="stylesheet" href="css/style.css">
<title>Rentals</title>
<script>
	(function($) {
		$(function() {

			$('.button-collapse').sideNav();

		}); // end of document ready
	})(jQuery); // end of jQuery name space
</script>
<script>
	
	$(document).ready(function() {
		$('select').material_select();

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
					<a href="#!name"><span class="white-text name">${pageContext.request.userPrincipal.name}</span></a>
					<a href="#!email"><span class="white-text email">ben@mail.com</span></a>
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
		<h4 style="text-align: center">Equipment Rentals</h4>
		<c:url value="equipmentRentals" var="url" />
		<form name="form" method="post" action="${url}"
			onsubmit="return verify()" class="col s12">

			<div class="row">

				<span> All questions are mandatory. If a question does not
					apply to your event, enter "0"<BR>


				</span>
				<div class="input-field col s12">
					<BR>
					<BR>
					<BR> <input id="chairNum" name="chairNum" type="number"
						min="0" step="1" required="" class="validate"
						placeholder="Enter a number">
					<h1>
						<label>How many chairs are you bringing onsite?* </label>
					</h1>
				</div>

				<div class="input-field col s12">
					<BR>
					<BR>
					<BR> <input id="fenceNum" name="fenceNum" type="number"
						min="0" step="1" required="" class="validate"
						placeholder="Enter a number">
					<h1>
						<label>How many privacy fences are you bringing onsite?* </label>
					</h1>
				</div>

				<div class="input-field col s12">
					<BR>
					<BR>
					<BR> <input id="barricadeNum" name="barricadeNum"
						type="number" min="0" step="1" required="" class="validate"
						placeholder="Enter a number">
					<h1>
						<label>How many barricades are you bringing onsite?*</label>
					</h1>
				</div>

				<div class="input-field col s12">
					<BR>
					<BR>
					<BR> <input id="shitterNum" name="shitterNum" type="number"
						min="0" step="1" required="" class="validate"
						placeholder="Enter a number">
					<h1>
						<label>How many port-o-lets are you bringing onsite?****</label>
					</h1>
				</div>

				<div class="input-field col s12">
					<BR>
					<BR>
					<BR> <input id="handWashNum" name="handWashNum" type="number"
						min="0" step="1" required="" class="validate"
						placeholder="Enter a number">
					<h1>
						<label>How many hand-washing stations are you bringing
							onsite?* </label>
					</h1>
				</div>

				<div class="input-field col s12">
					<BR>
					<BR>
					<BR> <input id="footWashNum" name="footWashNum" type="number"
						min="0" step="1" required="" class="validate"
						placeholder="Enter a number">
					<h1>
						<label>How many foot-washing stations are you bringing
							onsite?* </label>
					</h1>
				</div>

				<div class="input-field col s12">
					<BR>
					<BR>
					<BR> <input id="picnicNum" name="picnicNum" type="number"
						min="0" step="1" required="" class="validate"
						placeholder="Enter a number">
					<h1>
						<label>How many tables or picnic tables are you bringing
							onsite?* </label>
					</h1>
				</div>

				<div class="input-field col s12">
					<BR>
					<BR>
					<BR> <input id="waterStationNum" name="waterStationNum"
						type="number" min="0" step="1" required="" class="validate"
						placeholder="Enter a number">
					<h1>
						<label>How many portable water-filling stations are you
							bringing onsite?* </label>
					</h1>
				</div>
			</div>

			<BR>
			<BR>
			<BR>
			<div class="row">
				<div class="col s6">
					<a id="btnBack1" class="waves-effect waves-light btn-large"
						style="display: block" href="splashPad">Back</a>
				</div>
				<div class="col s6">

					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" /> <a id="btnContinue2" type="submit"
						onclick="verify()" class="waves-effect waves-light btn-large"
						style="display: block" href="mcsRentals">Next</a>
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
</body>
</html>