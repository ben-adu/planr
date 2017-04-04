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

<title>Insert title here</title>
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


<br><br>
	<div class="container">
		<div class="col-lg-4"></div>
		<div class="col-lg-8">

			
			<c:forEach var="wiki" items="${wikiList}">
			<div class="card">
			<div class="card-block">
			<h4 class="card-title">${wiki.title}</h4>
			Author: ${wiki.name}<br /> Subject ${wiki.subject}<br />
			</div>
			<br /> 
			<div class="card-block">
			${wiki.message}<br />
			</div>
			<div class="card-block">
			<a href="edit/${wiki.id}" class="btn btn-primary">Edit</a>
			<a href="delete/${wiki.id}" class="btn btn-primary">Delete</a>
			</div>
		</div>
		
		<br>
	</c:forEach>
			
			<c:url value="/form" var="addUrl" />
			<a href="form">Add new Entry</a>
		</div>
	</div>

	<div class="col-lg-4"></div>
</body>
</html>