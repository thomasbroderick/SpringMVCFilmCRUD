<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Delete Film</title>
</head>
<body>

<h2>Delete Film</h2>
<form:form action="deleteFilm.do" method="POST" modelAttribute="film">
		
		<form:label path="id">Film ID:</form:label>
		<form:input path="id" />
		<br />
		
		
		<input type="submit" value="Submit" />
	</form:form>
	
	<h3>
		<a href="index.html">Send me back to the main menu!</a>
	</h3>
	
</body>
</html>