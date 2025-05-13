<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<link rel="stylesheet" type="text/css" href="<c:url value="/css/main.css"/>" />

<center>
<form:form action="verifyUserSecurityAnswers.do" method="post" >
   <table>
        <tr>
            <td>${userAccount.securityQuestionOne}</td>
            <td>
            <spring:bind path="securityAnswerOne">
                <input type="text" id="securityAnswerOne" name="securityAnswerOne" value="<c:out value="${status.value}"/>" size="30">
                <span class="formError"><c:out value="${status.errorMessage}"/></span>
            </spring:bind>
            </td>
        </tr>
        
        <tr>
            <td>${userAccount.securityQuestionTwo}</td>
            <td>
            <spring:bind path="securityAnswerTwo">
                <input type="text" name="securityAnswerTwo" value="<c:out value="${status.value}"/>" size="30">
                <span class="formError"><c:out value="${status.errorMessage}"/></span>
            </spring:bind>
            </td>
        </tr>
        
        <tr>
        	<td colspan="2">
        		<input type="submit" value="Continue" />
        	</td>
        </tr>
        <tr>
          <td colspan="2" style="text-align:center" class="bodyBlueHeadline">
          <p><strong>Please note that all fields are case-sensitive.</strong></p></td>
        </tr>
        
        
   </table>
</form:form>
<script>document.getElementById('securityAnswerOne').focus();</script>
</center>
