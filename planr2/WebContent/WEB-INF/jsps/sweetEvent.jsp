<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link rel='stylesheet prefetch' href='https://cdn.jsdelivr.net/sweetalert2/6.1.1/sweetalert2.min.css'>
<script src='https://cdn.jsdelivr.net/sweetalert2/6.1.1/sweetalert2.min.css'></script>
<script src='https://cdn.jsdelivr.net/sweetalert2/6.1.1/sweetalert2.min.js'></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>Insert title here</title>
<script>
$(document).ready(function(){
	var sweetAlert = function(title, message, status, timer = 5000, isReload = false){
	    swal({
	        title   : title,
	        text    : message + '<br/>This pop up will close automatically in <strong class="swal-timer-count">' + timer/1000 + '</strong> seconds...',
	        type    : status,
	        html    : true,
	        timer   : timer,
	        allowEscapeKey  : false
	    }, function () {
	        swal.close();
	        if(isReload)
	            location.reload(true);
	    });
	    var e = $(".sweet-alert").find(".swal-timer-count");
	    var n = +e.text();
	    setInterval(function(){
	        n > 1 && e.text (--n);
	    }, 1000);
	}
});

</script>
 

</head>
<body>

    

</body>
</html>