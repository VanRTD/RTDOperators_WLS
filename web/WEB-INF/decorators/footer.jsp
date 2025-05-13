<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<table width="950" border="0" align="center" cellpadding="0" cellspacing="0" class="footerTable">
  <tr>
    <td width="460" align="left">
    <sec:authorize ifAnyGranted="ROLE_ADMIN,ROLE_OPERATOR_EMP,ROLE_OPERATOR_CONT,ROLE_LOGGEDIN" >
	<a href="/operator/secure/index.do" class="footerLink">Home</a> |
	</sec:authorize>
	
    <sec:authorize ifAnyGranted="ROLE_ADMIN,ROLE_OPERATOR_EMP,ROLE_OPERATOR_CONT,ROLE_LOGGEDIN" >
	<a href="/operator/j_spring_security_logout" class="footerLink">Sign Off</a>
	</sec:authorize>	
    </td>

    <td width="288" valign="middle" style="vertical-align:middle; padding-top:8px;">&nbsp;
    </td>
    <td width="212"><div align="right">&copy; 2025 Regional Transportation District</div></td>
  </tr>
</table>