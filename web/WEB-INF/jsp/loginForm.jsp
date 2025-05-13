<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@ page import="org.springframework.security.ui.webapp.AuthenticationProcessingFilter" %>
<%@ page import="org.springframework.security.ui.AbstractProcessingFilter" %>
<%@ page import="org.springframework.security.AuthenticationException" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<div id="mainContent" style="padding:.5em;"> 
<!-- JJH: this should be removed before going to production, b/c we don't
	 want spring error messages on the main page! -->
<span class="formError">
<c:if test="${fn:length(errorMessage) > 0}" >
	Invalid Username and/or Password. Please try again!	
</c:if>
</span>


<center>
<form action="j_spring_security_check">

	<table width="60%" border="0">
	<!-- Post maintenance alerts/messages here
	<tr>
		<td colspan="2">
			<div style="color:#FF0000">
			<h4>Due to a System Maintenance Outage this evening (8:00pm through 12:00am December 4, 2023) the OPERATOR INFORMATION PAGE & EXTRABOARD link will NOT be functional. Information displayed when accessing the link will NOT BE UP TO DATE.</br><br>
			PLEASE CHECK WITH YOUR DIVISION SUPERVISOR IN REGARD TO POTENTIAL UPCOMING ASSIGNMENTS FOR THIS EVENING (December 4, 2023).
			We apologize for the inconvenience this might cause. This outage will allow updates to take place for continued compliance with security requirements, as well as make the Oracle system current on the latest application and hardware updates.</h4>
			</div>
		</td>
	</tr> -->
	<tr>
		<td width="40%" style="text-align:right">
			<label for="j_username">Username</label>
		</td>
		<td style="text-align:left">		
			<input type="text" name="j_username" id="j_username" <c:if test="${not empty param.login_error}">value='<%= session.getAttribute(AuthenticationProcessingFilter.SPRING_SECURITY_LAST_USERNAME_KEY) %>'</c:if>/>
		</td>
	</tr>
	<tr>
	<td style="text-align:right">
		<label for="j_password">Password</label>
	</td>
	<td style="text-align:left">
		<input type="password" name="j_password" id="j_password" />
	</td>
	</tr>
	<tr>
	<td colspan="2" style="text-align:center">
		<input type="submit" value="Login" />
	</td>
	</tr>
	<tr>
		<td colspan="2" style="text-align:center">
			<a href="resetPassword.do">I forgot my password</a>
		</td>
	</tr>
    <tr>
	  <td colspan="2" style="text-align:center"><p>If this is your first time signing in, please 
      <a href="getEmploymentTypeSelection.do">create an account</a>.<br>
      If you lost/forgot your login information, you will have to <a href="getEmploymentTypeSelection.do">re-create your account</a>.<br />
This will override all previous login information stored, and then allow you to access the Operator Info Page and Bulletin Board.
</p></td>
	  </tr>
    <tr>
      <td colspan="2" style="text-align:center" class="bodyBlueHeadline">
      <strong>Password needs to be at least 10 characters long.<br />
Please note that all fields are case-sensitive.</strong></td>
    </tr>
	</table>
</form>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>For questions and or comments, please feel free to contact<br />
Nataly Handlos at 
  <a href="mailto:nataly.handlos@rtd-denver.com">nataly.handlos@rtd-denver.com</a>.</p>
<p>Thank you.</p>
</center>

<script>document.getElementById('j_username').focus();</script>
</div>