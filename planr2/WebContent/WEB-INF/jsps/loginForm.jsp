<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/js/materialize.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">

<script src="scripts/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/sweetalert.css">
<link rel="stylesheet" href="css/style.css">
<script>
	function validateForm() {
		var x = document.forms["myForm"]["username"].value;
		var y = document.forms["myForm"]["password"].value;
		if (x == "") {
			document.getElementById("validate").innerHTML = "Username Cannot be blank";
			return false;
		} else if (y == "") {
			document.getElementById("validate").innerHTML = "Password Cannot be blank";
			return false;
		}

	}
</script>
<title>Planr Login</title>
</head>
<body>
	<!-- navbar  -->
	<nav>
	<div class="nav-wrapper">
		<a href="#" class="brand-logo center"><img src="images/mcs.png"
			height="80"></a>
		<ul id="nav-mobile" class="left hide-on-med-and-down">

		</ul>
	</div>
	</nav>
	<!-- end of navbar -->
	<div class="container">
		<div class="row">
			<div class="col s8">
			<h5>In the News Today</h5>
				<div class="card horizontal">
					<div class="card-image">
						<img src="images/skyline.jpg">
					</div>
					<div class="card-stacked">
						<div class="card-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Ut maximus lectus id lectus placerat aliquam. Vivamus ut
								interdum nulla.</p>
						</div>
					</div>
				</div>
				
				<div class="card horizontal">
					<div class="card-image">
						<img src="images/takeoff.jpg">
					</div>
					<div class="card-stacked">
						<div class="card-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Ut maximus lectus id lectus placerat aliquam. Vivamus ut
								interdum nulla.</p>
						</div>
					</div>
				</div>
				
				<div class="card horizontal">
					<div class="card-image">
						<img src="images/rocket.png">
					</div>
					<div class="card-stacked">
						<div class="card-content">
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Ut maximus lectus id lectus placerat aliquam. Vivamus ut
								interdum nulla.</p>
						</div>
					</div>
				</div>
			</div>

				<!-- form -->
				<div class="col s4">
				<h5>Sign in</h5>
					<c:url value="/login" var="loginUrl" />
					<form method="post" action="${loginUrl}"
						onsubmit="return validateForm()" name="myForm">
						<div class="row">
							<div class="input-field col s12">
								<i class="material-icons prefix">account_circle</i> <input
									type="text" name="username" id="icon_prefix" /> <label
									for="icon_prefix">Username</label>
							</div>
						</div>

						<div class="row">
							<div class="input-field col s12">
								<i class="material-icons prefix">lock</i> <input type="password"
									name="password" class="form-control" id='icon_lock'> <label
									for="icon_lock">Password</label>
							</div>
						</div>



						<button class="btn waves-effect waves-light" type="submit">
							Login <i class="material-icons right">send</i>
						</button>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />

						<c:if test="${param.error != null}">
							<div id="error">Username or Password not found. Please try again!</div>
						</c:if>
						<p id="validate"></p>

						
					<c:url value="/createAccount" var="createUrl" />
					<h6>
						<a href="${createUrl}">Create an Account</a>
					</h6> 
					</form>
				</div>
			</div>
	</div>
</body>
</html>