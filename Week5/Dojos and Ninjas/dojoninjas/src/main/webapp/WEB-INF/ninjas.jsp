<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %>  

    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css" href="/css/styles.css">
<title>Dojo and Ninjas</title>
</head>
<body>
<div class=main>

		<h1>${dojo.name}</h1>

		<table>
			<thead>
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Age</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${dojo.ninja}" var="ninja">
					<tr>
						<td><c:out value="${ninja.first_name}"></c:out></td>
						<td><c:out value="${ninja.last_name}"></c:out></td>
						<td><c:out value="${ninja.age}"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<h3><a href="/dashboard">Dashboard</a></h3>
		
</div>
</body>
</html>