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
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- For any Bootstrap that uses JS or jQuery-->
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script><title>Create Dojo</title>
<title>Create Ninja</title>
</head>
<body>

		<div class=main>
			<h1>New Ninja</h1>
		    <form:form action="/saveNinja" method="post" modelAttribute="newNinja">
		    	<p>
		    	<form:label path="first_name">First Name:</form:label>
        		<form:errors path="first_name"/>
		    	<form:input path="first_name"/>
		    	</p>
		    	
		    	<p>
		    	<form:label path="last_name">Last Name:</form:label>
        		<form:errors path="last_name"/>
		    	<form:input path="last_name"/>
		    	</p>
		    	
		    	<p>
		    	<form:label path="age">Age:</form:label>
        		<form:errors path="age"/>
		    	<form:input path="age"/>
		    	</p>
		    	
		    	<p>
		    	<form:select path="dojo">
		    	<c:forEach items="${allDojos}" var="dojo">
		    	<option value="${dojo.id}">${dojo.name}</option>
		    	</c:forEach>
		    	</form:select>
		    	</p>

		        <button>Create Ninja</button>
		    </form:form>
		<div class=dashboard>
			<h6><a href="/dashboard">Cancel</a></h6>
		</div>
		</div>

</body>
</html>