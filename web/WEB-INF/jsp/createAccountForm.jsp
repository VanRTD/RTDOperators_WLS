<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<link rel="stylesheet" type="text/css"
	href="<c:url value="/css/main.css"/>" />

<center>
<span class="formError">${error}</span>	
	<form:form>
	
		<table>
	        <tr>
	          <td colspan="2" style="text-align:center" class="bodyBlueHeadline">
              <p><strong>Password needs to be at least 10 characters long each.<br />
              Please note that all fields are case-sensitive.</strong></p></td>
          </tr>
	        <tr>
	            <td>Username:</td>
	            <td>
	            <spring:bind path="username">
	                <input type="text" name="username" value="<c:out value="${status.value}"/>" size="30">
	                <span class="formError"><c:out value="${status.errorMessage}"/></span>
	            </spring:bind>
	            </td>
	        </tr>  
	        
	        <tr>
	            <td>Password:</td>
	            <td>
	            <spring:bind path="password">
	                <input type="password" name="password" value="<c:out value="${status.value}"/>" size="30">
	                <span class="formError"><c:out value="${status.errorMessage}"/></span>
	            </spring:bind>
	            </td>
	        </tr>   
	        
	        <tr>
	            <td>Confirm Password:</td>
	            <td>
	            <spring:bind path="confirmPassword">
	                <input type="password" name="confirmPassword" value="<c:out value="${status.value}"/>" size="30">
	                <span class="formError"><c:out value="${status.errorMessage}"/></span>
	            </spring:bind>
	            </td>
	        </tr>  
	        
	        <tr>
	        	<td colspan="2"><input type="submit" value="Create My Account" ></td>
	        </tr>
	              
        </table>
		
	</form:form>
</center>