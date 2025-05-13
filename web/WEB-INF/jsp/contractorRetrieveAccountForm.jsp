<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/main.css"/>" />
<center>	
<span class="formError" >${recordNotFound ? 'Operator not found' : ''}</span>
<span class="formError" >${accountAlreadyExists ? 'An account with that Employee Number already exists!' : '' } </span>

<form:form>
	<table>
		<tr style="text-align:left">
			<td>Employee Number:</td>
			<td><spring:bind path="employeeNumber">
				<input type="text" name="employeeNumber"
					value="<c:out value="${status.value}"/>" size="30">
				<span class="formError"><c:out value="${status.errorMessage}" /></span>
			</spring:bind> 
           This is your employee number, no initials (i.e. 12345)</td>
		</tr>
		<tr style="text-align:left">
			<td>Last Name</td>
			<td><spring:bind path="lastName">
				<input type="text" name="lastName"
					value="<c:out value="${status.value}"/>" size="30">
				<span class="formError"><c:out value="${status.errorMessage}" /></span>
			</spring:bind></td>
		</tr>
		<!-- 
		<tr style="text-align:left">
			<td>Seniority Date (MM/DD/YYYY)</td>
			<td><spring:bind path="seniorityDate">
				<input type="text" name="seniorityDate"
					value="<c:out value="${status.value}"/>" size="30">
				<span class="formError"><c:out value="${status.errorMessage}" /></span>
			</spring:bind></td>
		</tr>
		-->
		<tr style="text-align:left">
			<td colspan="3"><input type="submit" value="Submit" /></td>
		</tr>
	</table>
	<input type="hidden" name="isEmployee" value="false" />
</form:form>
</center>