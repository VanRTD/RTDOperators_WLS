<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div id="mainContent">

<div align="left">

<style type="text/css">
<!--
.bodyBlueHeadline2 {
	font-family: Tahoma, Verdana, Arial, Helvetica, sans-serif;
	font-size: 14px;
	color: #677ea9;
	font-weight: bold;
	line-height: 17px;
}
-->
</style>


<table width="950px" border="0" align="left" cellpadding="0" cellspacing="0" class="bodyTable4" id="wrapperTable">
  
  <tr>
    <td>
    <table width="625px" border="0" cellspacing="0">
	<tr>
		<!--CONTENT TD BEGINS HERE -->
        <td class="bodyBlue" style="text-align:center;"><img src="../images/HL_InsideConnections.gif" title="Inside Connections" class="headlineGraphic2"><br><br></td>
    </tr>
	<tr>
        <td class="bodyBlue">
        <table width="100%" align="center" border="0" cellpadding="0" cellspacing="0" summary="Nested table"><tr>
          <td bgcolor="#CCCCCC">
        <table width="100%" align="center" border="0" cellpadding="3" cellspacing="1" summary="Nested table">

          <c:forEach var="mmqThisWeek" items="${mmqFiles}" begin="0" end="0">
          <tr style="background:#FFFFFF; text-align:center">
            <td><a href="/operator/secure/fetchDocument.do?docName=MMD/${mmqThisWeek.fileNameFull}" 
              		class="landingPageLink">This Week's Inside Connections</a></td>
          </tr>
          </c:forEach>
          
          <c:forEach var="mmqCurrent" items="${mmqFiles}" >
          <tr style="background:#FFFFFF; text-align:center">
            <td><a href="/operator/secure/fetchDocument.do?docName=MMD/${mmqCurrent.fileNameFull}" 
              		class="landingPageLink">${mmqCurrent.fileNameFull}</a></td>
          </tr>
          </c:forEach>          
          
          </table>
        </td></tr></table>
        
		</td>
	</tr>
    </table></td>
  </tr>
</table>
</div>
</div>