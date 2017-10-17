<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/js/materialize.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">


<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="<c:url value="/css/style.css" />">
<script src="<c:url value="/scripts/script.js" />"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('select').material_select();
	});
</script>
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

	<div class="container">
		<div id="error"></div>
		<h5>Create Account</h5>
		<c:url value="register" var="url" />
		<form name="form" method="post" action="${url}"
			onsubmit="return verify()" class="col s12">
			<div class="row">
				<div class="input-field col s6">
					<i class="material-icons prefix">account_circle</i> <input
						type="text" name="username" id="icon_prefix" /> <label
						for="icon_prefix">Username</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s6">
					<i class="material-icons prefix">lock</i> <input type="password"
						name="password" class="form-control" id='icon_lock'> <label
						for="icon_lock">Password</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s6">
					<i class="material-icons prefix">lock</i> <input
						name="verifyPassword" type="password" id='icon_lock' /><label
						for="icon_lock">Re-enter password</label>
				</div>
			</div>
			<div class="row">
				<div class="input-field col s6">
					<select name="role">
						<option value="" disabled selected>SELECT ROLE</option>
						<option value="ROLE_ADMIN">Employee</option>
						<option value="ROLE_USER">Client</option>

					</select> <label>Select type of User</label>
				</div>
			</div>
			<div class="row"></div>
			<div class="row">
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" /> <input type="submit"
					value="Create Account!" onclick="verify()"
					class="btn waves-effect waves-light" />
			</div>
		</form>
	</div>


</body>
</html>