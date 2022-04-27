<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>

	<head>
		<meta charset="ISO-8859-1">
		<title>Omikuji</title>
		<link rel="stylesheet" type="text/css" href="/css/styles.css">
	</head>
	
	<body>
		<div class=main>
			<div class=header>
				<h1>Send An Okimuji!</h1>
			</div>
			
			<div class=userForm>
			    <form action="/process" method="post">
			    	<p><label>Enter number 5 to 25</label></p>
			    	<p><input type="number" name="num" min="5" max="25"></p>
			    	
			    	<p><label>Enter a city</label></p>
			    	<p><input type="text" name="city"></p>
			    	
			    	<p><label>Enter a real person's name</label></p>
			    	<p><input type="text" name="person"></p>
			    	
			    	<p><label>Enter professional endeavor or hobby</label></p>
			    	<p><input type="text" name="hobby"></p>
			    	
			    	<p><label>Enter any type of living thing</label></p>
			    	<p><input type="text" name="thing"></p>
			    	
			    	<p><label>Say something nice about someone</label></p>
			    	<textarea name="comment" rows="2" cols="50"></textarea>
		
				    <div class=footer>
						<h3>Send and show a friend</h3>
				        <input type="submit" value="Send">
				    </div>
			    </form>
			</div>
	
		</div>
		
	</body>
	
</html>