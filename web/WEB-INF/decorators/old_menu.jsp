<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<sec:authorize ifAnyGranted="ROLE_ADMIN,ROLE_OPERATOR,ROLE_LOGGEDIN">	
	<a href="getTime.do">Get Time</a><br/>
</sec:authorize>

<sec:authorize ifAnyGranted="ROLE_ADMIN,ROLE_OPERATOR,ROLE_LOGGEDIN" >
	<a href="/operator/j_spring_security_logout">Sign Off</a>
</sec:authorize>

<sec:authorize ifAllGranted="ROLE_ADMIN" >
	<a href="getAdminView.do">Admin</a><br/>
</sec:authorize>

