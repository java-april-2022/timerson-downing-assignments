<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ page isErrorPage="true" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Expense</title>
</head>
<body>
<h1>Edit expense</h1>
<a href="/">Home</a>
	<div class="wrapper">
		<div class=expForm>
		    <form:form action="/update/${expense.id}" method="put" modelAttribute="expense">
				<h3>Add Travel Expense</h3>
		    	<p>
		    	<form:label path="name">Expense:</form:label>
        		<form:errors path="name"/>
		    	<form:input path="name"/>
		    	</p>
		    	
		    	<p>
		    	<form:label path="vendor">Vendor:</form:label>
        		<form:errors path="vendor"/>
		    	<form:input path="vendor"/>
		    	</p>

				<p>
		    	<form:label path="amount">Amount:</form:label>
        		<form:errors path="amount"/>
		    	<form:input path="amount"/>
				</p>
		    	
				<p>
		    	<form:label path="description">Description:</form:label>
        		<form:errors path="description"/>
		    	<form:textarea path="description"/>
				</p>
		    	
		        <button>Update Expense</button>
		    </form:form>
		</div>
	</div>

</body>
</html>