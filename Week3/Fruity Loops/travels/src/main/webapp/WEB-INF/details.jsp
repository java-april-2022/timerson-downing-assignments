<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Expense Details</title>
</head>
<body>
<h1>Expense Details</h1>
<a href="/">Home</a>

<h2>${expense.name}</h2>
<h3>${expense.vendor}</h3>
<h3>${expense.amount}</h3>
<h4>${expense.description}</h4>

</body>
</html>