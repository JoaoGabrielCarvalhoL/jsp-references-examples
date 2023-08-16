<%@page import="br.com.carv.jsp.reference.utils.StringUtils"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>External Class</title>
</head>
<body>
	<h3>External Java Class</h3>
	
	<p> Valid: <%= StringUtils.isValid("") %> </p>
	<p> Valid: <%= StringUtils.isValid(" ") %> </p>
	<p> Valid: <%= StringUtils.isValid("Is a valid message") %> </p>
	<p> Valid: <%= StringUtils.isValid(".") %> </p>
	
	

</body>
</html>