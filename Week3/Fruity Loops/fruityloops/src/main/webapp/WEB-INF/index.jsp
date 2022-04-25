<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<link rel="stylesheet" type="text/css" href="/css/styles.css">
		<title>Fruity Loops</title>
	</head>

	<body>
	
		<div class=main>
			<h1>Welcome to Fruity Loops</h1>
			<ul>
				<c:forEach items="${fruits}" var="fruit">
					<li>
						<p><c:out value="${fruit.name}"></c:out> <c:out value="${fruit.price}"></c:out></p>
					</li>
				</c:forEach>
			</ul>
		</div>
		
	</body>

</html>