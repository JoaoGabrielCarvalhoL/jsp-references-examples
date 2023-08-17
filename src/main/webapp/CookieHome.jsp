<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>

	<%
		Cookie[] cookies = request.getCookies();
		String cookieValue = "C++";
		if (cookies != null) {
			for (Cookie cookie : cookies) {
				if (cookie.getName().equals("language-fav")) {
					cookieValue = cookie.getValue();
				}
			}
		}
	
	%>

	<h2 align="center">News Letters</h2>
	<hr />

	<h3>
		New Books for
		<%= cookieValue %></h3>

	<ul>
		<li>Lorem Ipsum</li>
		<li>Lorem Ipsum</li>
		<li>Lorem Ipsum</li>
		<li>Lorem Ipsum</li>
	</ul>

	<hr />

	<h3>
		Latest News reports for
		<%= cookieValue %></h3>

	<ul>
		<li>Lorem Ipsum</li>
		<li>Lorem Ipsum</li>
		<li>Lorem Ipsum</li>
		<li>Lorem Ipsum</li>
	</ul>

	<hr />

	<h3>
		Hot Jobs for
		<%= cookieValue %></h3>

	<ul>
		<li>Lorem Ipsum</li>
		<li>Lorem Ipsum</li>
		<li>Lorem Ipsum</li>
		<li>Lorem Ipsum</li>
	</ul>

	<hr />

	<a href="CookieResponse.jsp">Personalize this page.</a>


</body>
</html>