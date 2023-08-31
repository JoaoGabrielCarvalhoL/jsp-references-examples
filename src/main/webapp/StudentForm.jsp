<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Form</title>
</head>
<body>

<h4 align="center" >Form Student</h4>

	<div>
		<form action="StudentServlet" method="post">
		<label>First Name</label>
		<input type="text" name="firstName"/>
		<br><br>
		
		<label>Last Name</label>
		<input type="text" name="lastName"/>
		<br><br>
		
		<label>Vip</label>
		<input type="radio" name="isVipCustomer" value="true" /> Yes
		<input type="radio" name="isVipCustomer" value="false" /> No
		<br><br>
		
		<input type="submit" value="Add Student"/>
		</form>
		</div>

</body>
</html>