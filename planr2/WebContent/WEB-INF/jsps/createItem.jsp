<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:url value="saveItem" var="url" />
	<form:form commandName="inventory" method="post" action="${url}">
		First Name:<form:input path="name" />
		<br>
		Last Name:<form:input path="description" />
		<br>
		Company:<form:input path="quantity" />
		<input type="submit" value="SaveItem" />
		<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
	</form:form>

</body>
</html>