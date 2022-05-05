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
<title>Travels</title>
</head>

<body>
	<div class=wrapper>
		<h1>Welcome To Your Travel App</h1>

		<table>
			<thead>
				<tr>
					<th>Expense</th>
					<th>Vendor</th>
					<th>Amount</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allExpenses}" var="expense">
					<tr>
						<td><c:out value="${expense.name}"></c:out></td>
						<td><c:out value="${expense.vendor}"></c:out></td>
						<td><c:out value="${expense.amount}"></c:out></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	
		<div class=expForm>
		    <form:form action="/process" method="post" modelAttribute="newExpense">
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
		    	
		        <button>Submit Expense</button>
		    </form:form>
		</div>
	</div>
	

</body>

</html>