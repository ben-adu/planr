<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:url var="url" value="/saveItem" />
	<form action="${url}" method = "GET">
         Name: <input type = "text" name = "name">
         <br />
         Description: <input type = "text" name = "description" />
         Quantity: <input type = "text" name = "quantity" />
         <input type = "submit" value = "saveItem" />
      </form>

</body>
</html>