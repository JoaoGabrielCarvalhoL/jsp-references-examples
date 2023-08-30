<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="br.com.carv.jsp.reference.model.Student"%>
<%@ taglib prefix="core" uri="jakarta.tags.core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Form Student</title>
</head>
<body>
	<h4 align="center" >Form Student</h4>

	<div>
		<form action="FormStudent.jsp" method="post">
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
	<br>
	<hr>
	
<%
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	Boolean isVip = Boolean.valueOf(request.getParameter("isVipCustomer"));

	Student student = new Student(firstName, lastName, isVip);
	
	List<Student> students = new ArrayList<Student>();
	students.add(student);
	
	pageContext.setAttribute("students", students);

%>

<core:forEach var="student" items="${ students }">
		<table border="1" align="center" width="1000" height="100">
			<tr>
				<th>ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Vip Customer</th>
			</tr>
			
			<tr>
				<td>${student.getId()}</td>
				<td>${student.getFirstName()}</td>
				<td>${student.getLastName()}</td>
				<td>${student.getIsVipCustomer()}</td>
				<td> <core:if test="${student.getIsVipCustomer()}">Vip Client</core:if> </td>
				
			</tr>
			
		</table>
</core:forEach>
	
</body>
</html>