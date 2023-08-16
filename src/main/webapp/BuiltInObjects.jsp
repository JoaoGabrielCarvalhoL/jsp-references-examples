<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Informations from User</title>
</head>
<body>

	<h3>Info:</h3>
	<hr>
	
	<h4>Request User Agent: <strong> <%= request.getHeader("User-Agent") %> </strong> </h4>
	<h4>Language Locale: <strong> <%= request.getLocale() %> </strong> </h4>
	<h4>Ip Address from Header: <strong> <%= request.getHeader("x-forwarded-for") %> </strong> </h4>
	<h4>Ip Address from Header: <strong> <%= request.getHeader("X_FORWARDED_FOR") %> </strong> </h4>
	<h4>Ip Address: <strong> <%= request.getRemoteAddr() %> </strong> </h4>
	<h4>Auth Type: <strong> <%= request.getAuthType() %> </strong> </h4>
	<h4>Local: <strong> <%= request.getLocalName() %> </strong> </h4>
	<h4>Port: <strong> <%= request.getLocalPort() %> </strong> </h4>
	<h4>Protocol: <strong> <%= request.getProtocol() %> </strong> </h4>
	<h4>Session: <strong> <%= request.getSession().toString() %> </strong> </h4>
	<h4>Path Info: <strong> <%= request.getPathInfo() %> </strong> </h4>

</body>
</html>