<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thank you!</title>
</head>
<body>

	<%
	String language = request.getParameter("language");
	Cookie cookie = new Cookie("language-fav", language);
	cookie.setMaxAge(60 * 60 * 24 * 365);
	response.addCookie(cookie);
	%>

	<h3>Thank you for answering your preference.</h3>
	<hr>

	<a href="CookieHome.jsp">Return Home Page</a>

</body>
</html>