<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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


<title>Ben's Wiki</title>

<style>
.jumbotron {
	background-color: #f4511e; /* Orange */
	color: #ffffff;
}
</style>
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
			<div class="container-fluid bg-grey">
				<c:url value="/saveWiki" var="url" />
				<h2 class="text-center">Enter Info</h2>
				<div class="form-group">
					<form:form commandName="wiki" method="post" action="${url}">
						<div class="col-sm-4 form-group">
							<label for="name">Name:</label>
							<form:input path="name" class="form-control" placeholder="Jon Doe"/>
							<br /> <label for="subjects">Subject:</label>
							<div class="form-group">
								<form:input path="subject" class="form-control" placeholder="Physics"/>
							</div>
							<label for="title">Title of the Article:</label>
							<form:input path="title" class="form-control" placeholder="Effects of World War 2"/>
							<br />
						</div>
						<div class="col-sm-12 form-group">
							Text:
							<form:textarea path="message" class="form-control" /> <br>

							<input type="submit" value="SaveWiki"
								class="btn btn-default pull-right" />
						</div>
					</form:form>
				</div>
			</div>
		</div>
	</div>
	<div class="col-lg-2"></div>
</body>
</html>