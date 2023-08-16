<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Example</title>
</head>
<body>
	<form action="FirstFormResponse.jsp">

		<h3 align="center">Register User</h3>

		<div align="left">
			<label>Name</label> <br>
			<input type="text" name="name" /> <br> <br>
			 
			<label>Username</label><br>
			<input type="text" name="username" /> <br> <br>
			 
			<label>Cellphone</label><br>
			<input type="text" name="cellphone" /> <br> <br> 
			
			<label>Email</label><br>
			<input type="email" name="email" /> <br> <br> 
			
			<label>Password</label><br>
			<input type="password" name="password" /> <br> <br> 
			
			<label>Locale: </label>
			<select name="gender">
				<option>America</option>
				<option>Africa</option>
				<option>Asia</option>
				<option>Europe</option>
				<option>Oceania</option>
				<option>Antarctica</option>
			</select>
			<br><br>
			<label>Education</label><br>
			<input type="radio" name="education" value="primarySchool" /> Primary School<br>
			<input type="radio" name="education" value="highSchool" /> High School<br>
			<input type="radio" name="education" value="incompleteHigherEducation" /> Incomplete Higher Education<br>
			<input type="radio" name="education" value="completeHigherEducation" /> Complete Higher Education<br>
			<br>
			
			<label>Tick the books you've read:</label><br>
			<input type="checkbox" name="books" value="aosa1" /> The Architecture of Open Source Applications - Vol 1<br>
			<input type="checkbox" name="books" value="aosa2" /> The Architecture of Open Source Applications - Vol 2<br>
			<input type="checkbox" name="books" value="pfosa" /> The Performance of Open Source Applications<br>
			<input type="checkbox" name="books" value="fiveHundred" /> 500 Lines or Less<br>
			
			<br>
			<input type="hidden" name="MAX_FILE_SIZE" value="4194304" />
			<label>File: </label>
			<input type="file" /> 
			
			<br><br>
			<label>Comment:</label>
			<textarea rows="10" cols="175" name="comment"></textarea>
			<br><br>
			<input type="submit" value="Submit" />
			<br><br>
			
			
			
			

		</div>


	</form>

</body>
</html>