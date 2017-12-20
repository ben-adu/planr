<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<script src="https://unpkg.com/sweetalert2@7.1.0/dist/sweetalert2.all.js"></script>
<link rel="stylesheet" type="text/css" href="css/sweetalert.css">
<link rel="stylesheet" href="css/style.css">

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
	
	<script>
$(document).ready(function(){
	swal({
		  title: "Are you sure?",
		  text: "You will not be able to recover this imaginary file!",
		  type: "warning",
		  showCancelButton: true,
		  confirmButtonClass: "btn-danger",
		  confirmButtonText: "Yes, delete it!",
		  cancelButtonText: "No, cancel plx!",
		  closeOnConfirm: false,
		  closeOnCancel: false
		},
		function(isConfirm) {
		  if (isConfirm) {
		    swal("Deleted!", "Your imaginary file has been deleted.", "success");
		  } else {
		    swal("Cancelled", "Your imaginary file is safe :)", "error");
		  }
		});
});

</script>

</body>
</html>