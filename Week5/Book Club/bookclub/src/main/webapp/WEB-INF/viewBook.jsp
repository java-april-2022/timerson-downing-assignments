<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>

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

<title>View Book</title>
</head>

<body>
	<div class=wrapper>
		<div class="viewMain">
			<div class="welcome">
				<h1>${book.title}</h1>
				<a href="/dashboard">Back to shelves</a>
			</div>
			<h2>
				<em id="redText">${book.user.userName}</em> read <em id="purpleText">${book.title}</em>
				by <em id="greenText">${book.author}.</em>
			</h2>
			<p></p>
			<div class="viewThoughts">
				<h3>Here are ${book.user.userName}'s thoughts</h3>
				<textarea class="thoughts" rows="10" cols="60">${book.thoughts}</textarea>
	
				<div class="bottomButton">
					<c:if test="${sessionScope.userId == book.user.id}">
						<form:form action="/editBook/${book.id}" method="get">
							<button class="editBtn">edit</button>
						</form:form>
					</c:if>
				</div>
			</div>
		</div>
	</div>

</body>
</html>