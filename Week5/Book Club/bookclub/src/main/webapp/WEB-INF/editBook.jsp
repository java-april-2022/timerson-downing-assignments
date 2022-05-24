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

<title>Edit Book</title>
</head>
<body>
<div class=wrapper>
		<div class=welcome>
			<h1>Change Your Entry</h1>
			<h6>
				<a href="/dashboard">back to the shelves</a>
			</h6>
		</div>
		    <form:form action="/updateBook/${book.id}" method="put" modelAttribute="book">
		    	<p>
		    	<form:hidden path="user"/>
		    	</p>
		    	<p>
		    	<form:label path="author">Author:</form:label>
        		<form:errors class="text-danger" path="author"/>
		    	<form:input path="author" value="${book.author}"/>
		    	</p>
		    	
		    	<p>
		    	<form:label path="title">Title:</form:label>
        		<form:errors class="text-danger" path="title"/>
		    	<form:input path="title"/>
		    	</p>
		    	
		    	<p>
		    	<form:label path="thoughts">My Thoughts:</form:label>
        		<form:errors class="text-danger" path="thoughts"/>
		    	<form:textarea path="thoughts"/>
		    	</p>
		    	
		        <button>Update</button>
		    </form:form>

</div>
</body>
</html>