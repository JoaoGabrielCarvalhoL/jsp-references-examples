<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Response</title>
</head>
<body>

<h3>Informations from Register User:</h3>

<h4> Welcome ${param.name }.  Verify informations bellow:</h4>

<p> Name: <%= request.getParameter("name") %> </p>
<p> Username: <%= request.getParameter("username") %> </p>
<p> Cellphone: <%= request.getParameter("cellphone") %> </p>
<p> Email: <%= request.getParameter("email") %> </p>
<p> Password: <%= request.getParameter("password") %> </p>
<p> Ip Address: <%= request.getRemoteAddr() %> </p>
<p> Port: <%= request.getLocalPort() %> </p>
<p> Language: <%= request.getLocale() %> </p>
<p> From: <%= request.getParameter("gender") %> </p>
<p> Education: <%= request.getParameter("education") %> </p>
<p> Comment: <%= request.getParameter("comment") %> </p>
<% 
	String[] books = request.getParameterValues("books");
	if(books != null) {
		for (String book : books) {
			out.println("<p>Books: " + book.toString() + "</p>");
		}
	}
%>
<p> Client: <%= request.getHeader("User-Agent") %> </p>
<p> Ocurrent At: <%= LocalDateTime.now() %>

</body>
</html>