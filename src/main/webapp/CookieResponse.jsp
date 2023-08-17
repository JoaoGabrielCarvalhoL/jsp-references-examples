<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Favorite Language</title>
</head>
<body>
	<h3>Favorite Language</h3>

	<form action="CreateCookie.jsp">
		<label>Select your favorite language for news: </label> <select
			name="language">
			<option>Java</option>
			<option>C</option>
			<option>C++</option>
			<option>Rust</option>
		</select> <br> <br><input type="submit" value="Submit" />

	</form>


</body>
</html>