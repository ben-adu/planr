<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css"
	integrity="sha384-rwoIResjU2yc3z8GV/NPeZWAv56rSmLldC3R/AZzGRnGxQQKnKkoFVhFQhNUwEyJ"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="http://js.nicedit.com/nicEdit-latest.js"
	type="text/javascript"></script>
<script type="text/javascript">
	bkLib.onDomLoaded(nicEditors.allTextAreas);
</script>
<title>Insert title here</title>
<link rel="stylesheet" href="<c:url value="/css/style.css" />">
<script src="<c:url value="/scripts/script.js" />"></script>
</head>
<body>
<!-- navbar  -->
	<nav class="navbar navbar-toggleable-md navbar-inverse bg-primary">
	<button class="navbar-toggler navbar-toggler-right" type="button"
		data-toggle="collapse" data-target="#navbarNav"
		aria-controls="navbarNav" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<a class="navbar-brand" href="home">Benedict Adu</a>
	<div class="collapse navbar-collapse" id="navbarNav">
		<ul class="navbar-nav">
			<li class="nav-item active"><a class="nav-link" href="home">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="login">Login</a></li>
			<li class="nav-item"><a class="nav-link" href="form">New
					Entry</a></li>
			<li class="nav-item"><a class="nav-link" href="createAccount">New
					Account</a></li>
			<li class="nav-item"><a class="nav-link" href="display">Display
					Entries</a></li>

		</ul>
	</div>
	</nav>
	<!-- end of navbar -->



	<div class="container">
		<div class="col-lg-2"></div>
		<div class="col-lg-8">
			<div id="error"></div>
			<c:url value="/register" var="url" />
			<form name="form" method="post" action="${url}"
				onsubmit="return verify()">
				UserName: <input name="username" type="text" class="form-control"/><br /> Password: <input
					name="password" type="password" class="form-control" /><br /> Re-enter Password: <input
					name="verifyPassword" type="password" class="form-control"/><br /> <input
					type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				<input type="submit" value="Create Account!" class="btn btn-primary" onclick="verify()" />
			</form>
		</div>
	</div>
	<div class="col-lg-2"></div>


</body>
</html>