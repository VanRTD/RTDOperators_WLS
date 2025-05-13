<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<link rel="stylesheet" type="text/css" href="<c:url value="/css/main.css"/>" />
<center>

<form:form action="createSecurityQuestions.do" >
   <table border="0">
  
        <tr>
            <td>Security Question 1:</td>
            
            <spring:bind path="securityQuestionOne">
            <td>
                <form:select path="securityQuestionOne" >
                	<option value="">Select a security question</option>
               		<form:options items="${securityQuestions}"/>              	
               	</form:select>
            </td>
            <td>               
                <span class="formError"><c:out value="${status.errorMessage}"/></span>
                </td>
            </spring:bind>
                       
        </tr>
        
        <tr>
        <td>Answer
        </td>
        	
       		<spring:bind path="securityAnswerOne" >
       		<td>
       			<input type="text" name="securityAnswerOne" value="<c:out value="${status.value}"/>" size="36">
       		</td>
       		<td>
       			<span class="formError"><c:out value="${status.errorMessage}"/></span>
       		</td>
       		</spring:bind>
        	
        </tr>

        <tr>
            <td>Security Question 2:</td>
            
            <spring:bind path="securityQuestionTwo">
	            <td width="300px">
	                <form:select path="securityQuestionTwo" >
                		<option value="">Select a security question</option>
               			<form:options items="${securityQuestions}"/>              	
               		</form:select>               
	            </td>
	            <td>
	                <span class="formError"><c:out value="${status.errorMessage}"/></span>
	            </td>
            </spring:bind>
                        
        </tr>
        
        <tr>
        <td>Answer
        </td>
        	
        		<spring:bind path="securityAnswerTwo" >
        			<td>
        			<input type="text" name="securityAnswerTwo" value="<c:out value="${status.value}"/>" size="36">
        			</td>
        			<td>
        			<span class="formError"><c:out value="${status.errorMessage}"/></span>
        			</td>
        		</spring:bind>
        	
        </tr>
        
        
        
        <tr>
            <td colspan="3">
                <input type="submit" value="Submit" />
            </td>
        </tr>
       
    </table>
    
</form:form>

</center>