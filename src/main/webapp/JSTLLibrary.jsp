<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalDateTime"%>
<%@ taglib prefix="core" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Test JSTL Library</title>
</head>
<body>
	<h3>JSTL Library</h3>
	<hr>

	<core:set var="value" value="<%=LocalDateTime.now()%>"/>
	<p>Tag Set</p>
	<h4>Time on the Server: ${value} </h4>
	<hr><br>
	
	
	<p>Tag for Each</p>
	<%
		String[] names = {"João", "Gabriel", "Carvalho", "Lopes", "Cruz"};
		pageContext.setAttribute("names", names);
	%>
	<core:forEach var="name" items="${ names }">
		<ol>
			<li>${ name }</li>
		</ol>
	</core:forEach>
	<hr><br>
	
	
	
</body>
</html>