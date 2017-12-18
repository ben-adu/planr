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
<title>Additional Details</title>
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
         <h4 style="text-align: center">Additional Details</h4>
    
     <c:url value="additionalDetails" var="url" />
		<form name="form" method="post" action="${url}"
			onsubmit="return verify()" class="col s12">
			
			
    	<div class="row">
				<div class="input-field col s12"><BR><BR><BR>
						<input id="attendeeNum" name="attendeeNum" type="number" min="1" step="1" required="" class="validate">
					<h1><label>How many attendees do you expect in total?</label></h1>
				</div>
		</div>
		
		<div class="row">
		
				<div class="input-field col s12" required="">
				    <select id="acknowledge" name="acknowledge" required="">
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
					href="vendors" >Back</a> 
			</div>  
			<div class="col s6">
			
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> 
				<a id="createLayout" type="submit" onclick="verify()" class="waves-effect waves-light btn-large" style="display: block"
					href="createLayout">Create Layout</a>
			</div>
		</div>
    </form>
    
    </div>
</body>
</html>