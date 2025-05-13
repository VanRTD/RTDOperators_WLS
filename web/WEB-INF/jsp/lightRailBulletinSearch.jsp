<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ page import="org.springframework.security.ui.webapp.AuthenticationProcessingFilter"%>
<%@ page import="org.springframework.security.ui.AbstractProcessingFilter"%>
<%@ page import="org.springframework.security.AuthenticationException"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<SCRIPT SRC="../js/bulletinSearchValidationScript.js" TYPE="text/javascript"></SCRIPT>

<div id="mainContent">
<div align="left">
<table width="950px" border="0" align="left" cellpadding="0" cellspacing="0" class="bodyTable4" id="wrapperTable">
  
  <tr>
    <td>
    <table width="625px" border="0" cellspacing="0">
	<tr>
        <!--CONTENT TD BEGINS HERE -->
        <td class="bodyBlue">
        <!--THIS IS THE HEADLINE GRAPHIC. ANY HEADLINE USED WITHIN THIS TEMPLATE SHOULD ALWAYS BE ASSIGNED THE 'headlineGraphic2' CLASS-->
		<img src="../images/HL_LRBulletins.gif"
			alt="Light Rail Bulletins" 
            class="headlineGraphic2">
        <!-- TEXT AND OTHER CONTENT GOES BELOW. LEFT PADDING AMOUNT AND BACKGROUND IMAGE FOR THIS TABLE ARE SET IN THE TABLE TAG CLASS (bodyTable3) -->
        <p style="text-align:center;">| 
        <a href="getTransportationBulletins.do?type=LR&sortBy=byDate" 
        class="landingPageLink">View Light Rail Bulletins By Date</a> |</p>
        </td>
      </tr>

      <tr>
        <td>

<table width="100%" border="0" cellspacing="0" cellpadding="3" summary="Nested table">
	<tr>
		<td class="bodyBlue">
		<form:form action="getTransportationBulletins.do" method="post" name="Transportation_Bulletins">
        
        <table width="100%" align="center" border="0" cellpadding="1" cellspacing="0" summary="Nested table" bgcolor="#CCCCCC"><tr>
          <td>
        <table width="100%" align="center" border="0" cellpadding="0" cellspacing="0" summary="Nested table" bgcolor="#ffffff">
              <tr style="background:#9ab3d4; text-align:center">
                <td colspan="3"><strong>Search Bulletin</strong></td>
              </tr>
              <tr>
                <td colspan="3"><p style="text-align: center"><strong>Search bulletin(s) by either the Bulletin Number and/or the
                  partial Search Word.</strong></p>
                  <ul>
                    <li>To search bulletin(s), complete the requested
                      information in the form provided below.</li>
                    <li>After entering information, click the <b>'Search
                      Bulletin'</b> button to proceed.</li>
                    <li>To clear the form, click the <b>'Reset Form'</b> button.</li>
                  </ul></td>
                </tr>
              <tr style="background: #F0F0F0">
                  <td style="text-align: right;"><strong>Bulletin
                  Number:</strong></td>
                  <td width="1%">&nbsp;</td>
                  <td>
                      <spring:bind path="bulletinNumber">
                          <input type="text" name="bulletinNumber" value="<c:out value="${status.value}"/>" size="30">
                          <span class="formError"><c:out value="${status.errorMessage}" /></span>
                      </spring:bind>
                  </td>
              </tr>
              <tr>
                  <td style="text-align: right"><strong>Search Word:</strong></td>
                  <td>&nbsp;</td>
                  <td><spring:bind path="searchWords">
                          <form:textarea path="searchWords" rows="2" cols="50" />
                          <span class="formError"><c:out value="${status.errorMessage}" /></span>
                      </spring:bind>
                  </td>
              </tr>
              <tr style="text-align: center; background: #F0F0F0">
                  <td colspan="3"><br>
                  
                  <input type="hidden" name="type" value="LR" />
                  <input type="button" name="Submit" value="Search Bulletin" ONCLICK="ValidateForm();">
                  <input type="reset" name="Submit2" value="Reset Form"> <br>
                  <br>
                  </td>
              </tr>
            </table>
        </td></tr></table>
        </form:form>

		</td>
	</tr>
</table>
</td>
</tr>
</table>
</td>
</tr>
</table>
</div>
</div>