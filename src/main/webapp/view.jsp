<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="core" uri="jakarta.tags.core" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View</title>
</head>
<body>
	<h1 align="center">Names</h1>
	
	<core:forEach var="name" items="${names}">
		<br>${name}<br>
	
	</core:forEach>

</body>
</html>