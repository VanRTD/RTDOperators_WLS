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
		<td>Employee Name:</td>
		<td><c:out value="${employeeAccountAccessBean.lastName}" /></td>
	</tr>

	<tr>
		<td>Employee Number:</td>
		<td><c:out value="${employeeAccountAccessBean.employeeNumber}" /> 
		(This is your employee number, no initials (i.e. 12345))</td>
	</tr>

	<c:if test="${command.employee}" >
	<tr>
		<td>SS Number Last Four:</td>
		<td><c:out value="${employeeAccountAccessBean.lastFourSSNum}" /></td>
	</tr>
	</c:if>

	<!--  JJH: this used to be the seniority date rather than empty strings in the conditional, 
	      before we removed the sniority date for contractors after finding out that Nataly
	      doesn't know how to test... -->
	<tr>
		<td>${command.employee ? 'Date of Birth:' : ''}</td>
		<td>${command.employee ? employeeAccountAccessBean.dateOfBirth : ''}</td>
	</tr>

	<tr>
		<td colspan="3"><a href="createAccount.do">Continue to create account</a>&nbsp;
		or <a href="index.do">Start Over</a></td>
	</tr>

</table>
</center>
