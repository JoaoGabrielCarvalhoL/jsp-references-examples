<%@page import="java.util.UUID"%>
<%@page import="java.time.LocalDateTime"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Hello from Server</title>
</head>
<body>
	<h2>Hello World of Java!</h2>

	<h3>JSP Expressions</h3>

	<p>
		<strong> The time on the server is: </strong><%=LocalDateTime.now()%>
	</p>

	<p>
		Converting a String to uppercase:
		<%=new String("João Gabriel Carvalho").toUpperCase()%>
	</p>

	<p>
		25 multiplied by 4 equals:
		<%=25 * 4%>
	</p>

	<p>
		Is 75 less then 69?
		<%=75 < 69%>
	</p>
	<hr />

	<h3>JSP Scriptlet</h3>
	<p>
		<%
		for (int i = 0; i < 50; i++) {
			if (i % 2 == 0) {
				out.println("<br>" + i + ": Pair");
			} else {
				out.println("<br>" + i + ": Odd");
			}
		}
		%>
	</p>
	<hr />

	<h3>JSP Declaration</h3>

	<%!public String getRandomUUID() {
		return UUID.randomUUID().toString();
	}%>
	<p>Get UUID:  <%= getRandomUUID() %>


</body>
</html>

