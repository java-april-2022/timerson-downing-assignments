<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Omikuji Form</title>
		<link rel="stylesheet" type="text/css" href="/css/styles.css">
	</head>
	<body>
		<h1>Welcome to Omikuji Fortunes</h1>

	    <form action="/saveInfo" method="post">
	        <label>Email:</label>
	        <input type="text" name="name">
	        <label>Password:</label>
	        <input type="text" name="person">
	        <input type="submit">
	    </form>		

	</body>
</html>