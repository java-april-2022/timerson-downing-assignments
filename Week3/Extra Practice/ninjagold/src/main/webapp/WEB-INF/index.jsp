<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Ninja Gold Game</title>
		<link rel="stylesheet" type="text/css" href="/css/styles.css">
	</head>
	
	<body>
		<div class=wrapper>
			<div class=header>
				<h1>Your Gold: <c:out value="${totalGold}"></c:out></h1>
				<h1>Add Gold: <c:out value="${addGold}"></c:out></h1>
				<h1>Choice: <c:out value="${choice}"></c:out></h1>
			</div>
			
			<div class=main>
				<div class=gold>
					<h2>Farm</h2>
					<h4>(earns 10-20 gold)</h4>
				    <form action="/process" method="post">
				    	<input type="hidden" name="choice" value="farm">
				    	<input type="hidden" name="minGold" value="10">
				    	<input type="hidden" name="maxGold" value="20">
						<input type="submit" value="Find Gold">
				    </form>
				</div>
		
				<div class=gold>
					<h2>Cave</h2>
					<h4>(earns 5-10 gold)</h4>
				    <form action="/process" method="post">
				    	<input type="hidden" name="choice" value="cave">
				    	<input type="hidden" name="minGold" value="5">
				    	<input type="hidden" name="maxGold" value="10">
						<input type="submit" value="Find Gold">
				    </form>
				</div>
	
				<div class=gold>
					<h2>House</h2>
					<h4>(earns 2-5 gold)</h4>
				    <form action="/process" method="post">
				    	<input type="hidden" name="choice" value="house">
				    	<input type="hidden" name="minGold" value="2">
				    	<input type="hidden" name="maxGold" value="5">
						<input type="submit" value="Find Gold">
				    </form>
				</div>
	
				<div class=gold>
					<h2>Quest</h2>
					<h4>(earns 0-50 gold)</h4>
				    <form action="/process" method="post">
				    	<input type="hidden" name="choice" value="quest">
				    	<input type="hidden" name="minGold" value="0">
				    	<input type="hidden" name="maxGold" value="10">
						<input type="submit" value="Find Gold">
				    </form>
				</div>
			</div>
		</div>		
	</body>

</html>