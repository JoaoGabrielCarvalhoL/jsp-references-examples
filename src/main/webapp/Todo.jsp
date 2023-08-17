<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Todo Home</title>
</head>
<body>
	<h2 align="center">Todo App</h2>
	
	<div align="center">
		<form action="Todo.jsp">
			<label>Task</label><br>
			<input type="text" name="task" /><br><br>
			
			<input type="submit" value="Add Task"/>
		
		</form>
	</div>
	
	<hr/>
	
	<div>
		<h2 align="center">Tasks</h2>
	
		<%
			List<String> tasks = (List<String>) session.getAttribute("tasks");
		
			if (tasks == null) {
				tasks = new ArrayList<String>();
				session.setAttribute("tasks", tasks);
			}
			
			tasks.add(request.getParameter("task"));
			
			out.println("<ul>");
			
			for (String task : tasks) {
				out.println("<li>" + task + "</li>");
			}
		
			out.println("</ul");
		
		%>
		
		Heloísa de  Mello Moraes 
		24/03/2008 
		Fazenda Capim Bairro Matão 
		CPF: 522.231.428-69
		
		Declaração de Crisma 
	
	</div>

</body>
</html>