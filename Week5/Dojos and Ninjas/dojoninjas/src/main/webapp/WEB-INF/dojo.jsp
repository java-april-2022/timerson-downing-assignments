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
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<title>Create Dojo</title>
</head>
<body>

<div class=main>
		<h1>New Dojo</h1>
		<div class=expForm>
		    <form:form action="/saveDojo" method="post" modelAttribute="newDojo">
		    	<p>
		    	<form:label path="name">Dojo Name:</form:label>
        		<form:errors path="name"/>
		    	<form:input path="name"/>
		    	</p>
		    	
		        <button>Create Dojo</button>
		    </form:form>
		</div>
		<div class=dashboard>
			<h6><a href="/dashboard">Cancel</a></h6>
		</div>
</div>

</body>
</html>