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
	
	<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/additional-methods.min.js"></script>

<script src="scripts/sweetalert.min.js"></script>
<script src="scripts/jquery.formautofill.min.js"></script>
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
		
		$.validator.addMethod("ALPHANUMERICC", function(value, element) {
            return this.optional(element) || /^[a-zA-Z0-9]+$/i.test(value);
        }, "Please enter only alphanumeric characters");
		
		jQuery.validator.addMethod("lettersonly", function(value, element) {
			  return this.optional(element) || /^[a-z]+$/i.test(value);
			}, "Letters only please");
		
		
		
		$("#rForm").validate({
			errorClass: "my-error-class",
		    validClass: "my-valid-class",
			rules : {
				
				chairNum : {
					required : true,
					minlength : 1,
					digits:"true"
				},
				fenceNum : {
					required : true,
					minlength : 1,
					digits:"true"
				},
				barricadeNum : {
					required : true,
					minlength : 1,
					digits:"true"
				},
				shitterNum : {
					required : true,
					minlength : 1,
					digits:"true"
				},
				handWashNum : {
					required : true,
					minlength : 1,
					ALPHANUMERICC:"required COTRACT"
				},
				

				eStartDate : "required",
				eStartTime : "required",
				eEndDate : "required",
				eEndTime : "required",
				eSetupDate : "required",
				eSetupTime : "required",
				eCleanupDate : "required",
				eCleanupTime : "required",
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

	});
</script>

<script>
$(document).ready(function() {
var data = {
    "chairNum": "1",
    "fenceNum": "1",
    "barricadeNum": "1",
    "shitterNum": "1",
    "handWashNum": "1",
    "footWashNum": "1",
    "picnicNum": "1",
    "waterStationNum": "1"
    
}
$("#rForm .btn").bind("click", function() {
    $("#rForm").autofill(data, {
        findbyname: false
    });
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
		<form name="rForm" id="rForm" class="rForm"  method="post" action="${url}"
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
			<input type="button" class="btn btn-info clickaction" value="autofill by id">
			<div class="row">
				<div class="col s6">
					<a id="btnBack1" class="waves-effect waves-light btn-large"
						style="display: block" href="splashPad">Back</a>
				</div>
				<div class="col s6">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" /><a> <button type="submit"
					value="Next" onclick="valid()"
					class="waves-effect waves-light btn-large" style="display: block" href="mcsRentals"> Next </button></a>
			</div>
			</div>
			
		</form>
</div>
</body>
</html>