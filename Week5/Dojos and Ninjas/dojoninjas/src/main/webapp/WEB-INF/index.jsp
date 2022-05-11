<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/css/styles.css">
<title>Dojo And Ninjas</title>
</head>
<body>
<div class=main>
	<h1>Welcome Dojo Ninjas</h1>
	<h3><a href="/createDojo">Create Dojo</a></h3>
	<h3><a href="/createNinja">Create Ninja</a></h3>

	<table>
		<thead>
			<tr>
				<th>Location</th>
				<th>Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${allDojos}" var="dojo">
				<tr>
					<td><c:out value="${dojo.name}"></c:out></td>
					<td><a href="/viewDojo/${dojo.id}">See Students</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>

</body>
</html>