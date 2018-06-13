<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Film</title>
</head>
<body>

	<h2>Edit Film</h2>
	<h2>
		<h3>${film.id }</h3>

		<form:form action="editFilm.do" method="POST" modelAttribute="film">

			<form:label path="title">Title:</form:label>
			<form:input path="title" />
			<br />
			<form:label path="description">Description:</form:label>
			<form:input path="description" />
			<br />
			<form:label path="releaseYear">Release Year:</form:label>
			<form:input path="releaseYear" />
			<br />
			<form:label path="languageId">Language ID:</form:label>
			<form:input path="languageId" />
			<br />
			<form:label path="rentalDuration">Rental Duration:</form:label>
			<form:input path="rentalDuration" />
			<br />
			<form:label path="rentalRate">Rental Rate:</form:label>
			<form:input path="rentalRate" />
			<br />
			<form:label path="length">Length:</form:label>
			<form:input path="length" />
			<br />
			<form:label path="replacementCost">Replacement Cost:</form:label>
			<form:input path="replacementCost" />
			<br />
			<form:label path="rating">Rating:</form:label>
			<form:input path="rating" />
			<br />
			<form:label path="specialFeatures">Special Features:</form:label>
			<form:input path="specialFeatures" />
			<br />

			<input type="submit" value="Submit" />
		</form:form>

		<h3>
			<a href="index.html">Send me back to the main menu!</a>
		</h3>
</body>
</html>