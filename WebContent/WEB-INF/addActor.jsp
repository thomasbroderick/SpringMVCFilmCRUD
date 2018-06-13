<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add Actor</title>
</head>
<body>

<h2>Add Actor</h2>
<form:form action="addActor.do" method="POST" modelAttribute="actor">
		
		<form:label path="firstName">First Name:</form:label>
		<form:input path="firstName" />
		<br />
		<form:label path="lastName">Last Name:</form:label>
		<form:input path="lastName" />
		<br />
		
		<input type="submit" value="Submit" />
	</form:form>
</body>
</html>