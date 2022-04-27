<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Your Omikuji</title>
		<link rel="stylesheet" type="text/css" href="/css/styles.css">
	</head>
	<body>
		<div class=main>
			<div class=header>
				<h1>Here's Your Omikuji</h1>
			</div>
			<div class=message>
				<h1>In <c:out value="${num}"></c:out> months you will teleport to <c:out value="${city}"></c:out>
				with your new best friend <c:out value="${person}"></c:out> to attend the national conference on
				<c:out value="${hobby}"></c:out>. The very next day you will win the lottery and buy a 
				<c:out value="${thing}"></c:out>! Also, <c:out value="${comment}"></c:out></h1>
			</div>
			<div class=footer>
				<a href="/omikuji">Go Back</a>
			</div>
		</div>
		
	</body>

</html>