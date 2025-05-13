<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/main.css"/>" />


<center>
<table>
	<tr>
		<td><a href="<c:url value="/getRetrieveAccountForm.do" />">I am an employee of RTD</a></td>
		
	</tr>
	<tr>
		<td><a href="<c:url value="/getRetrieveAccountForm.do?type=contractor" />">I am a contractor at RTD</a></td>
	</tr>
</table>
</center>