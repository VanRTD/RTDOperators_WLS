<%@ page language="java" contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec"%>
<%@ page import="org.springframework.security.ui.webapp.AuthenticationProcessingFilter"%>
<%@ page import="org.springframework.security.ui.AbstractProcessingFilter"%>
<%@ page import="org.springframework.security.AuthenticationException"%>

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
<table width="950px" border="0" align="left" 
  cellpadding="0" cellspacing="0" class="bodyTable4" id="wrapperTable">
  
  <tr>
    <td>
    <table width="700px" border="0" cellspacing="0">
	<tr>
        <!--CONTENT TD BEGINS HERE -->
        <TD class="bodyBlueHeadline2"><a name="top"></a><h3>Service Development News</h3> 
        <!-- TEXT AND OTHER CONTENT GOES BELOW. LEFT PADDING AMOUNT AND BACKGROUND IMAGE 
        FOR THIS TABLE ARE SET IN THE TABLE TAG CLASS (bodyTable3) -->
        <p style="text-align:center;">| 
        <a href="/operator/secure/getTransportationBulletins.do?type=DN" 
        class="landingPageLink">Newsletters Search</a> 
        | <a href="getTransportationBulletins.do?type=DN&sortBy=byDate" 
        class="landingPageLink">View Service Development News By Date</a> |</p>
        </td>
      </tr>
	<tr>
	  <td class="bodyBlue">
      <table width="100%" align="center" border="0" cellpadding="0" 
          cellspacing="0" summary="Nested table">
	    <tr>
	      <td bgcolor="#CCCCCC">
          <table width="100%" align="center" border="0" 
              cellpadding="3" cellspacing="1" summary="Nested table">
	        <tr style="background:#9ab3d4; text-align:center">
	          <td colspan="5"><strong>Search Result</strong></td>
	          </tr>
	        <tr style="background:#D6E7F7;">
	          <td colspan="5">
              <strong>
              ${fn:length(bulletinsList)} Newsletters(s) Found That Match Your Bulletin Number Search Criteria.
              </strong></td>
	          </tr>
            <tr style="text-align: center; background: #F0F0F0;">
              <td width="12%"><strong>DATE</strong></td>
              <td width="12%"><strong>NUMBER</strong></td>
              <td width="18%"><strong>TO</strong></td>
              <td><strong>SUBJECT</strong></td>
              <td width="14%"><strong>DOCUMENT</strong></td>
	          </tr>
	        <c:forEach var="bulletin" items="${bulletinsList}">
            <tr style="background:#FFFFFF;">
	          <td style="text-align: center">
              <fmt:formatDate value="${bulletin.bulletinDate}" pattern="MM/dd/yyyy" /></td>
              <td>${bulletin.bulletinNumber}</td>
              <td>${bulletin.bulletinFor}</td>
              <td>${bulletin.subject}</td>
              <td><a href="/operator/secure/fetchDocument.do?docName=Transportation_Bulletins/DN/${bulletin.bulletinFilename}">${bulletin.bulletinFilename}</a></td>
	        </tr>
            </c:forEach>
            
            <tr style="background:#D6E7F7;">
	          <td colspan="5">
              <strong>
              ${fn:length(searchWordList)} Bulletin(s) Found That Match Your Word Search Criteria.
              </strong></td>
	          </tr>
            <tr style="text-align: center; background: #F0F0F0;">
              <td width="12%"><strong>DATE</strong></td>
              <td width="12%"><strong>NUMBER</strong></td>
              <td width="18%"><strong>TO</strong></td>
              <td><strong>SUBJECT</strong></td>
              <td width="14%"><strong>DOCUMENT</strong></td>
	          </tr>

	        <c:forEach var="bulletinSearchWord" items="${searchWordList}">
            <tr style="background:#FFFFFF;">
	          <td style="text-align: center">
              <fmt:formatDate value="${bulletinSearchWord.bulletinDate}" pattern="MM/dd/yyyy" /></td>
              <td>${bulletinSearchWord.bulletinNumber}</td>
              <td>${bulletinSearchWord.bulletinFor}</td>
              <td>${bulletinSearchWord.subject}</td>
              <td><a href="/operator/secure/fetchDocument.do?docName=Transportation_Bulletins/DN/${bulletinSearchWord.bulletinFilename}">${bulletinSearchWord.bulletinFilename}</a></td>
	        </tr>
            </c:forEach>
	        </table></td>
	      </tr>
	    </table>
        
        <div style="text-align: center"><br>
        <font size="3"><strong><a href="#top">Top</a></strong></font></div>
        </td>
	  </tr>
    </table>
</td>
</tr>
</table>
</div>
</div>