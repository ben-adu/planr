<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
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
<link rel="stylesheet" type="text/css" href="css/sweetalert.css">
<link rel="stylesheet" href="css/style.css">

<style type="text/css">
.my-error-class {
    color:red;
}
.my-valid-class {
    color:green;
}
</style>

<title>Create New Event</title>

<script>
	(function($) {
		$(function() {

			$('.button-collapse').sideNav();

		}); // end of document ready
	})(jQuery); // end of jQuery name space
</script>
<script type="text/javascript">
	$(document).ready(function() {
		
		$('select').material_select();
		
		$('.datepicker').pickadate({
		    selectMonths: true,
		    selectYears: 5, 
		    today: 'Today',
		    clear: 'Clear',
		    close: 'Ok',
		    closeOnSelect: true, 
		    format: 'yyyy-mm-dd',
		    onClose: function(){
		        $(document.activeElement).blur()
		    }
		  });
		
		$.validator.addMethod("ALPHANUMERICC", function(value, element) {
            return this.optional(element) || /^[a-zA-Z0-9]+$/i.test(value);
        }, "Please enter only alphanumeric characters");
		
		
		
		
		
		$("#event").validate({
			errorClass: "my-error-class",
		    validClass: "my-valid-class",
			rules : {
				eEndDate : {
					
					greaterThan:"#eStartDate"
				},
				eventIdentifier : {
					required : true,
					minlength : 1,
					ALPHANUMERICC:"required IDENTIFIER"
				},
				firstName : {
					required : true,
					minlength : 1,
					ALPHANUMERICC:"required FIRSTNAME "
				},
				eventName : {
					required : true,
					minlength : 1,
					ALPHANUMERICC:"required EVENTNAME"
				},
				lastName : {
					required : true,
					minlength : 1,
					ALPHANUMERICC:"required LASTNAME"
				},
				contract : {
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
		
		//Date Validation
	var from_$input = $('#eStartDate').pickadate(),
	    from_picker = from_$input.pickadate('picker')

	var to_$input = $('#eEndDate').pickadate(),
	    to_picker = to_$input.pickadate('picker')


	
	if ( from_picker.get('value') ) {
	  to_picker.set('min', from_picker.get('select'))
	}
	if ( to_picker.get('value') ) {
	  from_picker.set('max', to_picker.get('select'))
	}

	
	from_picker.on('set', function(event) {
	  if ( event.select ) {
	    to_picker.set('min', from_picker.get('select'))    
	  }
	  else if ( 'clear' in event ) {
	    to_picker.set('min', false)
	  }
	})
	to_picker.on('set', function(event) {
	  if ( event.select ) {
	    from_picker.set('max', to_picker.get('select'))
	  }
	  else if ( 'clear' in event ) {
	    from_picker.set('max', false)
	  }
	})
	//Date Validation	
	
	var Kfrom_$input = $('#eSetupDate').pickadate(),
	    Kfrom_picker = Kfrom_$input.pickadate('picker')

	var Kto_$input = $('#eCleanupDate').pickadate(),
	    Kto_picker = Kto_$input.pickadate('picker')


	
	if ( Kfrom_picker.get('value') ) {
	  Kto_picker.set('min', Kfrom_picker.get('select'))
	}
	if ( Kto_picker.get('value') ) {
	  Kfrom_picker.set('max', Kto_picker.get('select'))
	}

	
	Kfrom_picker.on('set', function(event) {
	  if ( event.select ) {
	    Kto_picker.set('min', Kfrom_picker.get('select'))    
	  }
	  else if ( 'clear' in event ) {
	    Kto_picker.set('min', false)
	  }
	})
	Kto_picker.on('set', function(event) {
	  if ( event.select ) {
	    Kfrom_picker.set('max', Kto_picker.get('select'))
	  }
	  else if ( 'clear' in event ) {
	    Kfrom_picker.set('max', false)
	  }
	})
	
			
		
	});
	
</script>
<script>

$( document ).ready(function() {
	$('.timepicker').pickatime({
    default: 'now', // Set default time: 'now', '1:30AM', '16:30'
    fromnow: 0,       // set default time to * milliseconds from now (using with default = 'now')
    twelvehour: false, // Use AM/PM or 24-hour format
    donetext: 'OK', // text for done-button
    cleartext: 'Clear', // text for clear-button
    canceltext: 'Cancel', // Text for cancel-button
    autoclose: true, // automatic close timepicker
    format:"HH:MM:SS",
    aftershow: function(){} //Function for after opening timepicker
  });
	 $('.timepicker').on('change', function() {
	        let receivedVal = $(this).val();
	        $(this).val(receivedVal + ":00");
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


	<!-- Body -->

	<div class="container">

		<h4 style="text-align: center">Create New Event</h4>
		<BR>
		<BR>
		<c:url value="creatingEvent" var="url" />
		<form name="event" method="post" action="${url}"
			onsubmit="return verify()" class="col s12" id="event" class="event">

			<div class="row">
				<div class="input-field col s6">
					<i class="material-icons prefix">business</i> <input type="text"
						name="eventIdentifier" id="eventIdentifier" required="" class="validate"
						aria-required="true" /> <label for="icon_prefix">Event
						Identifier</label>
				</div>

				<div class="input-field col s6">
					<i class="material-icons prefix">email</i> <input type="email"
						name="email" id="email" class="validate" required="" class="validate"
						aria-required="true" /> <label for="icon_prefix">Email</label>
				</div>
			</div>

			<div class="row">
				<div class="input-field col s6">
					<i class="material-icons prefix">account_circle</i> <input
						type="text" name="firstName" id="firstName" required="" class="validate"
						class="validate" aria-required="true" /> <label for="icon_prefix">First
						Name</label>
				</div>
				<div class="input-field col s6">
					<i class="material-icons prefix">business</i> <input type="text"
						name="eventName" id="eventName" required="" class="validate"
						aria-required="true" /> <label for="icon_prefix">Event
						Name</label>
				</div>
			</div>

			<div class="row">
				<div class="input-field col s6">
					<i class="material-icons prefix">account_circle</i> <input
						type="text" name="lastName" id="lastName" required="" class="validate"
						class="validate" aria-required="true" /> <label for="icon_prefix">Last
						Name</label>
				</div>

				<div class="input-field col s6">
					<i class="material-icons prefix">business</i> <input type="text"
						name="contract" id="contract" required="" class="validate"
						aria-required="true" /> <label for="icon_prefix">Contract
						Number</label>
				</div>
			</div>

			<div class="row">
				<div class="input-field col s6">
					<i class="material-icons prefix">event_available</i> <label
						for="eStartDate">Event Start Date</label> <input id="eStartDate"
						type="text" class="datepicker" required="" class="validate"
						name="eStartDate">
				</div>

				<div class="input-field col s6">
					<i class="material-icons prefix">access_time</i> <label
						for="eStartTime">Event Start Time</label> <input id="eStartTime"
						type="text" class="timepicker" required="" class="validate"
						aria-required="true" name="eStartTime">
				</div>
			</div>

			<div class="row">
				<div class="input-field col s6">
					<i class="material-icons prefix">event_available</i> <label
						for="eEndDate">Event End Date</label> <input id="eEndDate"
						type="text" class="datepicker" required="" class="validate"
						name="eEndDate">
				</div>

				<div class="input-field col s6">
					<i class="material-icons prefix">access_time</i> <label
						for="eEndTime">Event End Time</label> <input id="eEndTime"
						type="text" class="timepicker" required="" class="validate"
						aria-required="true" name="eEndTime">
				</div>
			</div>

			<div class="row">
				<div class="input-field col s6">
					<i class="material-icons prefix">event_available</i> <label
						for="eSetupDate">Set-up/Load-in Date</label> <input
						id="eSetupDate" type="text" class="datepicker" required=""
						class="validate" name="eSetupDate">
				</div>

				<div class="input-field col s6">
					<i class="material-icons prefix">access_time</i> <label
						for="eSetupTime">Set-up/Load-in Time</label> <input
						id="eSetupTime" type="text" class="timepicker" required=""
						class="validate" aria-required="true" name="eSetupTime">
				</div>
			</div>

			<div class="row">
				<div class="input-field col s6">
					<i class="material-icons prefix">event_available</i> <label
						for="eCleanupDate">Clean-up/Load-out Date</label> <input
						id="eCleanupDate" type="text" class="datepicker" required=""
						class="validate" name="eCleanupDate">
				</div>

				<div class="input-field col s6">
					<i class="material-icons prefix">access_time</i> <label
						for="eCleanupTime">Clean-up/Load-out Time</label> <input
						id="eCleanupTime" type="text" class="timepicker" required=""
						class="validate" aria-required="true" name="eCleanupTime">
				</div>
			</div>

			<div class="row">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" /> <input type="submit"
					value="Create Event!" onclick="verify()"
					class="btn waves-effect waves-light" />
			</div>
		</form>

	</div>

</body>
</html>