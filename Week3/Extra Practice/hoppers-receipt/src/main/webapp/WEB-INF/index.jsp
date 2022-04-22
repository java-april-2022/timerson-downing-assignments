<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Hoppers Receipt</title>
</head>
<body>

	<h1>Customer Name: <c:out value="${nameKey}"/></h1>
	<h2>Item Name: <c:out value="${itemKey}"/></h2>
	<h2>Price: <c:out value="${priceKey}"/></h2>
	<h2>Description: <c:out value="${descKey}"/></h2>
	<h2>Vendor: <c:out value="${vendorKey}"/></h2>

</body>
</html>