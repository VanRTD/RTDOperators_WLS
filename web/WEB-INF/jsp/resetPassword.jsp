<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ page import="org.springframework.security.ui.webapp.AuthenticationProcessingFilter"%>
<%@ page import="org.springframework.security.ui.AbstractProcessingFilter"%>
<%@ page import="org.springframework.security.AuthenticationException"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<div id="mainContent">
<center>
<span class="formError">${errorMessage}</span>
<form:form action="savePassword.do" method="post">
${errors}
   <table>
        <tr>
            <td>New Password:</td>
            <td>
            	<spring:bind path="password">
					<input type="password" id="password" name="password" value="<c:out value="${status.value}"/>" size="30"> 
					<span class="formError"><c:out value="${status.errorMessage}" /></span>
				</spring:bind>
			</td>
			
		</tr>
		
		<tr>
			<td>Confirm Password:</td>
			<td>
				<spring:bind path="confirmPassword">
					<input type="password" id="confirmPassword" name="confirmPassword" value="<c:out value="${status.value}"/>" size="30"> 
					<span class="formError"><c:out value="${status.errorMessage}" /></span>
				</spring:bind>
			</td>
		</tr>
		
		
		<tr>
		
			<td colspan="2" align="center">
				<input type="submit" value="Submit" />
			</td>
		
		</tr>
		<tr>
		  <td colspan="2" style="text-align:center" class="bodyBlueHeadline">
          <p><strong>Password needs to be at least 10 characters long each.<br />
          Please note that all fields are case-sensitive.</strong></p></td>
	    </tr>
	</table>
</form:form>
<script>document.getElementById('password').focus();</script>
</center>
</div>


