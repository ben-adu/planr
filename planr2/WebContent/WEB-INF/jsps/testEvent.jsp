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
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/js/materialize.min.js"></script>
<script src="scripts/materialize-stepper.min.js"></script>
<script src="scripts/jquery.formautofill.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.17.0/jquery.validate.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/jquery.validate.min.js"></script>
<script
	src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.0/additional-methods.min.js"></script>
<script src="scripts/materialize-validation.min.js"></script>


<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" type="text/css"
	href="css/materialize-stepper.min.css">
<link rel="stylesheet" type="text/css" href="css/style.css">


<title>Plan your event</title>
<script>
$(document).ready(function(){
      $('.stepper').activateStepper();
      $('select').material_select();
      $("#spForm").materialvalidation();
      
      $("#spForm").submit(function(){
    	    if($(this).data().materialvalidation.methods.validate()){
    	        // your code
    	    }
    	    return false;
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

		$("#splashPadNo").change(function() {
			if ($("#splashPadNo").val() == "two") {
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

			} else if ($("#splashPadNo").val() == "three") {
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

			} else if ($("#splashPadNo").val() == "four") {
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

			} else {
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

		 $("#splashPadOne").change(function() {

			if ($("#splashPadOne").val() == "North") {
				$("#splashPadTwo option[value='North']").remove();
			} else if ($("#splashPadOne").val() == "south") {
				$("#splashPadTwo option[value='south']").remove();
			} else if ($("#splashPadOne").val() == "east") {
				$("#splashPadTwo option[value='east']").remove();
			} else if ($("#splashPadOne").val() == "west") {
				$("#splashPadTwo option[value='west']").remove();
			}
		});

		/* trickery for vendors */
		 $("#inflate1").change(function() {
			if ($("#inflateOne").val() != 0) {
				$("#size1").show();
				$("#size1").attr('required');
				$("#size1").attr('validate');
			} else {
				$("#size1").hide();
				$("#size1").removeAttr('required');
				$("#size1").removeAttr('validate');
			}
		});

		$("#inflate2").change(function() {
			if ($("#inflateTwo").val() != 0) {
				$("#size2").show();
				$("#size2").attr('required');
			} else {
				$("#size2").hide();
				$("#size2").removeAttr('required');
			}
		});

		$("#games1").change(function() {
			if ($("#gamesNum").val() != 0) {
				$("#games2").show();
				$("#games3").show();
				$("#games2").attr('required');
				$("#games3").attr('required');
			} else {
				$("#games2").hide();
				$("#games3").hide();
				$("#games2").removeAttr('required');
				$("#games3").removeAttr('required');
			}
		});

		$("#trailer1").change(function() {
			if ($("#trailerNum").val() != 0) {
				$("#trailer2").show();
			} else {
				$("#trailer2").hide();
			}
		});

		$("#displayCar1").change(function() {
			if ($("#displayCarNum").val() != 0) {
				$("#displayCar2").show();
			} else {
				$("#displayCar2").hide();
			}
		});

		$("#displayTruck1").change(function() {
			if ($("#displayTruckNum").val() != 0) {
				$("#displayTruck2").show();
			} else {
				$("#displayTruck2").hide();
			}
		}); 

	});
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
<!-- <script>
	
	$(document).ready(function() {
		
		$.validator.addMethod("ALPHANUMERICC", function(value, element) {
            return this.optional(element) || /^[a-zA-Z0-9]+$/i.test(value);
        }, "Please enter only alphanumeric characters");
		
		jQuery.validator.addMethod("lettersonly", function(value, element) {
			  return this.optional(element) || /^[a-z]+$/i.test(value);
			}, "Letters only please");
		
		$("#spForm").validate({
			errorClass: "my-error-class",
		    validClass: "my-valid-class",
			rules : {
				
				splashPadNo : {
					required : true
				},
				

				splashPadNo : "required",
				
			},
			messages : {
				splashPadNo : {
					required : "Please choose an option"
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
</script> -->
<!-- 
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
$("#spForm .btn").bind("click", function() {
    $("#spForm").autofill(data, {
        findbyname: false
    });
});
});
</script> -->
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
						<img src="../images/lake.jpg">
					</div>
					<a href="#!user"><img class="circle" src="../images/ben.jpg"></a>
					<a href="#!name"><span class="white-text name">ANKIT
							SHAH</span></a> <a href="#!email"><span class="white-text email">ben@mail.com</span></a>
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

	<div class="col s12">
				<ul class="stepper horizontal" id="horizontal">

					<li class="step active">
						<div data-step-label="Configuration"
							class="step-title waves-effect waves-dark">Splash Pad</div>

						<div class="step-content">
							<form name="spForm" id="spForm" class="spForm" class="col s12"
								novalidate>
								<div class="row">
									<div class="container">
										<div class="row">
											<div class="input-field col s8" id="q1s">
												<br> <br> <br> <select id="splashPadNo"
													name="splashPadNo" data-validation="select"
													data-content="Name field is empty">
													<option value="" selected>Choose one</option>
													<option value="two">2</option>
													<option value="three">3</option>
													<option value="four">4</option>
												</select>
												<h1>
													<label>How many Splash Pad jets do you need on?</label>
												</h1>
											</div>
										</div>

										<div class="row">
											<div class="input-field col s8" id="q2">
												<BR> <BR> <BR> <select id="splashPadOne"
													name="splashPadOne">
													<option value="" selected>Choose one</option>
													<option value="north">North</option>
													<option value="south">South</option>
													<option value="east">East</option>
													<option value="west">West</option>
												</select>
												<h1>
													<label>Which side of the Splash Pad would you like
														to turn off?</label>
												</h1>
											</div>
										</div>

										<div class="row">
											<div class="input-field col s8" id="q3">
												<BR> <BR> <BR> <select id="splashPadTwo"
													name="splashPadTwo">
													<option value="" selected>Choose one</option>
													<option value="north">North</option>
													<option value="south">South</option>
													<option value="east">East</option>
													<option value="west">West</option>
												</select>
												<h1>
													<label>Which side of the Splash Pad would you like
														to turn off?</label>
												</h1>
											</div>
										</div>

										<div class="row">
											<div class="input-field col s8" id="q4">
												<BR> <BR> <BR> <select id="pressureOne"
													name="pressureOne">
													<option value="" selected>Choose one</option>
													<option value="north">North</option>
													<option value="south">South</option>
													<option value="east">East</option>
													<option value="west">West</option>
												</select>
												<h1>
													<label>Please choose a side to adjust pressure</label>
												</h1>
											</div>


											<div class="input-field col s4" id="q5">
												<BR> <BR> <BR> <select id="pressureLevelOne"
													name="pressureLevelOne">
													<option value="" selected>Choose one</option>
													<option value="55">55%</option>
													<option value="75">75%</option>
													<option value="100">100%</option>
												</select>
												<h1>
													<label>Pressure Level?</label>
												</h1>
											</div>
										</div>

										<div class="row">
											<div class="input-field col s8" id="q6">
												<BR> <BR> <BR> <select id="pressureTwo"
													name="pressureTwo">
													<option value="" selected>Choose one</option>
													<option value="north">North</option>
													<option value="south">South</option>
													<option value="east">East</option>
													<option value="west">West</option>
												</select>
												<h1>
													<label>Please choose a side to adjust pressure</label>
												</h1>
											</div>


											<div class="input-field col s4" id="q7">
												<BR> <BR> <BR> <select id="pressureLevelTwo"
													name="pressureLevelTwo">
													<option value="" selected>Choose one</option>
													<option value="55">55%</option>
													<option value="75">75%</option>
													<option value="100">100%</option>
												</select>
												<h1>
													<label>Pressure Level?</label>
												</h1>
											</div>
										</div>

										<div class="row">
											<div class="input-field col s8" id="q8">
												<BR> <BR> <BR> <select id="pressureThree"
													name="pressureThree">
													<option value="" selected>Choose one</option>
													<option value="north">North</option>
													<option value="south">South</option>
													<option value="east">East</option>
													<option value="west">West</option>
												</select>
												<h1>
													<label>Please choose a side to adjust pressure</label>
												</h1>
											</div>


											<div class="input-field col s4" id="q9">
												<BR> <BR> <BR> <select
													id="pressureLevelThree" name="pressureLevelThree">
													<option value="" selected>Choose one</option>
													<option value="55">55%</option>
													<option value="75">75%</option>
													<option value="100">100%</option>
												</select>
												<h1>
													<label>Pressure Level?</label>
												</h1>
											</div>
										</div>

										<div class="row">
											<div class="input-field col s8" id="q10">
												<BR> <BR> <BR> <select id="pressureFour"
													name="pressureFour">
													<option value="" selected>Choose one</option>
													<option value="north">North</option>
													<option value="south">South</option>
													<option value="east">East</option>
													<option value="west">West</option>
												</select>
												<h1>
													<label>Please choose a side to adjust pressure</label>
												</h1>
											</div>


											<div class="input-field col s4" id="q11">
												<br> <br> <br> <select id="pressureLevelFour"
													name="pressureLevelFour">
													<option value="" selected>Choose one</option>
													<option value="55">55%</option>
													<option value="75">75%</option>
													<option value="100">100%</option>
												</select>
												<h1>
													<label>Pressure Level?</label>
												</h1>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>

						<div class="row">
							<div class="step-actions">

								<button class="waves-effect waves-dark btn blue next-step"
									type="submit">SUBMIT</button>
							</div>
						</div>
					</li>

					<li class="step">
						<div class="step-title waves-effect waves-dark">Step 2</div>

						<div class="step-content">
							<div class="row">

								<div class="container">
									<h4 style="text-align: center">Equipment Rentals</h4>

									<form name="rForm" id="rForm" class="rForm" class="col s12">

										<div class="row">

											<span> All questions are mandatory. If a question does
												not apply to your event, enter "0"<BR>


											</span>
											<div class="input-field col s12">
												<BR> <BR> <BR> <input id="chairNum"
													name="chairNum" type="number" min="0" step="1" required=""
													class="validate" placeholder="Enter a number">
												<h1>
													<label>How many chairs are you bringing onsite?* </label>
												</h1>
											</div>

											<div class="input-field col s12">
												<BR> <BR> <BR> <input id="fenceNum"
													name="fenceNum" type="number" min="0" step="1" required=""
													class="validate" placeholder="Enter a number">
												<h1>
													<label>How many privacy fences are you bringing
														onsite?* </label>
												</h1>
											</div>

											<div class="input-field col s12">
												<BR> <BR> <BR> <input id="barricadeNum"
													name="barricadeNum" type="number" min="0" step="1"
													required="" class="validate" placeholder="Enter a number">
												<h1>
													<label>How many barricades are you bringing
														onsite?*</label>
												</h1>
											</div>

											<div class="input-field col s12">
												<BR> <BR> <BR> <input id="shitterNum"
													name="shitterNum" type="number" min="0" step="1"
													required="" class="validate" placeholder="Enter a number">
												<h1>
													<label>How many port-o-lets are you bringing
														onsite?****</label>
												</h1>
											</div>

											<div class="input-field col s12">
												<BR> <BR> <BR> <input id="handWashNum"
													name="handWashNum" type="number" min="0" step="1"
													required="" class="validate" placeholder="Enter a number">
												<h1>
													<label>How many hand-washing stations are you
														bringing onsite?* </label>
												</h1>
											</div>

											<div class="input-field col s12">
												<BR> <BR> <BR> <input id="footWashNum"
													name="footWashNum" type="number" min="0" step="1"
													required="" class="validate" placeholder="Enter a number">
												<h1>
													<label>How many foot-washing stations are you
														bringing onsite?* </label>
												</h1>
											</div>

											<div class="input-field col s12">
												<BR> <BR> <BR> <input id="picnicNum"
													name="picnicNum" type="number" min="0" step="1" required=""
													class="validate" placeholder="Enter a number">
												<h1>
													<label>How many tables or picnic tables are you
														bringing onsite?* </label>
												</h1>
											</div>

											<div class="input-field col s12">
												<BR> <BR> <BR> <input id="waterStationNum"
													name="waterStationNum" type="number" min="0" step="1"
													required="" class="validate" placeholder="Enter a number">
												<h1>
													<label>How many portable water-filling stations are
														you bringing onsite?* </label>
												</h1>
											</div>
										</div>

										<BR> <BR> <BR> <input type="button"
											class="btn btn-info clickaction" value="autofill by id">


									</form>
								</div>

							</div>

						</div>
						<div class="row">
						<div class="step-actions">
							<button class="waves-effect waves-dark btn blue next-step">CONTINUE</button>
							<button class="waves-effect waves-dark btn-flat previous-step">BACK</button>
						</div>
						</div>
					</li>
					<li class="step">
						<div class="step-title waves-effect waves-dark">Step 3</div>
						<div class="step-content">
							Finish!
							<div class="step-actions">
								<button class="waves-effect waves-dark btn blue" type="submit">SUBMIT</button>
							</div>
						</div>
					</li>
				</ul>
	</div>

</body>
</html>