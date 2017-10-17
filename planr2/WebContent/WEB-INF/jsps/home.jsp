<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/js/materialize.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.98.1/css/materialize.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">


<link rel="stylesheet" href="css/style.css">
<script>
  $(document).ready(function(){
	window.location.href="accept";
});

</script>
<title>Planr</title>
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
	
	
	<c:if test="${accountCreated}"><h3>Account successfully created</h3></c:if>
	
	<!-- 	
	<c:url value="/secure" var="url"/>
	<a href="${url}">Click me!</a>
	-->
</body>
</html>