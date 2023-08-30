<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="jakarta.tags.core" %>
<%@ taglib prefix="fmtd" uri="jakarta.tags.fmt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>

<core:set var="theLocale" value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}" scope="session"> </core:set>
<fmtd:setLocale value="${theLocale}"></fmtd:setLocale>
<fmtd:setBundle basename="br.com.carv.jsp.reference.i18n.resources.mylabels"></fmtd:setBundle>
<html>

<head>
<meta charset="UTF-8">
<title>Internazionalization</title>
</head>

<body>
<h3 align="center">Internazionalization I18N </h3>
	<a href="i18n-messages.jsp?theLocale=en_US">English (US)</a>
	<a href="i18n-messages.jsp?theLocale=es_ES">Spanish (ES)</a>
	<a href="i18n-messages.jsp?theLocale=de_DE">German (DE)</a>
	<a href="i18n-messages.jsp?theLocale=pt_BR">Portuguese (BR)</a>
	<hr>
	<fmt:message key="label.greeting">
	
	</fmt:message> <br/><br/>
	
	<fmt:message key="label.firstname">
		<i>João Gabriel</i>
	</fmt:message> <br/><br/>
	
	<fmt:message key="label.lastname">
		<i>Carvalho</i>
	</fmt:message> <br/><br/>
	
	<fmt:message key="label.welcome">
	
	</fmt:message> <br/><br/>
	

	

</body>
</html>