<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Film Details</title>
</head>
<body>

	<h2>Film Details stub</h2>

	<c:choose>
		<c:when test="${film != null }">
			<h3>${film.title }</h3>
			<table>
				<tr>
					<td>Released: ${film.releaseYear }</td>
				</tr>
				<tr>
					<td>Summary: ${film.description }</td>
				</tr>
				<tr>
					<td>Rating: ${film.rating }</td>
				</tr>
				<tr>
					<td>Special Features: ${film.specialFeatures }</td>
				</tr>
			</table>


			<form action="editFilm.do" method="GET">
				<input type="submit" value="Edit Film" />
			</form>
			<form action="deleteFilm.do" method="GET">
				<input type="submit" value="Delete this Film" />
			</form>
		</c:when>
		<c:when test="${film == null }">
			<p>There is no film with that ID in the database.</p>
		</c:when>
	</c:choose>

	<h3>
		<a href="index.html">Send me back to the main menu!</a>
	</h3>



</body>
</html>