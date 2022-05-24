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

<title>Book Club</title>
</head>
<body>
	<div class="wrapper">
		<div class="welcome">
			<div class="message">
				<h1>
					Welcome
					<c:out value="${validUser.email}"></c:out>
				</h1>
				<h3>${message}</h3>
			</div>
			<div class="links">
				<a href="/logout">Logout</a>
				<p></p>
				<a href="/addBook">Add Book to My Shelf</a>
				<p></p>
			</div>
		</div>

		<h3>Books from everyone's shelves</h3>
		<table class="books">
			<thead>
				<tr>
					<th>ID</th>
					<th>Author</th>
					<th>Title</th>
					<th>Provided By</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${allBooks}" var="book">
					<tr>
						<td><c:out value="${book.id}"></c:out></td>
						<td><c:out value="${book.author}"></c:out></td>
						<td><a href="/viewBook/${book.id}">${book.title}</a></td>
						<td>${book.user.userName}</td>
						<c:if test="${sessionScope.userId == book.user.id}">
							<td><form:form action="/deleteBook/${book.id}" method="delete">
									<button>Delete</button>
								</form:form>
							</td>
						</c:if>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>

</body>
</html>