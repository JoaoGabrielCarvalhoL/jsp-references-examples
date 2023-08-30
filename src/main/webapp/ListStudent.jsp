<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="br.com.carv.jsp.reference.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Students</title>
</head>
<body>

<%
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	Boolean isVip = Boolean.valueOf(request.getParameter("isVipCustomer"));

	Student student = new Student(firstName, lastName, isVip);
	
	List<Student> students = new ArrayList<Student>();
	students.add(student);
	
	pageContext.setAttribute("students", students);

%>

</body>
</html>